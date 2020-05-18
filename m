Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109A21D7C29
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 17:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2PYFKatCwthHQ6VRmyikd4/X/iAv6ZtPMQmWbltoGY=; b=ZqI4NwKDm5NwIV
	gSgGUlJEAzSKq/hSLKwAgO1oS5THBn2024hFPGFFmA9v4RLPzr/2ZyqEdD9ErMSBjO6wFLNjRuQSq
	9Drr0wF5WsCbRahXq9Jk5Khbvo+k1av+gZyFkf6ozfYfjJdMxUttll/xBKaa5/VUbU9qNKDwuVIoZ
	b0fYZeeTGDaMaY/BCxLelql4Dd96JmxpMK3EAO4lxhdfnYCIBlctdywGXMcoQ4PGcgd9DNRCn7Ytq
	37bfRpUwLGg2qO2pkAVnfRhM1Qcgj/pjzyUj17TqPj5hTq55amPTfN88UNPbwnDXqC3KwsibA28il
	ZUQP0XlrPY34MCp7eH2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahGT-0005CE-ST; Mon, 18 May 2020 15:01:13 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jahGL-0005BS-A8; Mon, 18 May 2020 15:01:05 +0000
Date: Mon, 18 May 2020 08:01:05 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: [PATCH v2] nvmet: nvmet_async_events_process always free async
 event to avoid memleak
Message-ID: <20200518150105.GA30884@infradead.org>
References: <1589806918-9711-1-git-send-email-dmilburn@redhat.com>
 <20200518130733.5hfckxyskdom3dsv@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518130733.5hfckxyskdom3dsv@beryllium.lan>
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: hch@infradead.org, David Milburn <dmilburn@redhat.com>,
 linux-nvme@lists.infradead.org, chaitanya.kulkarni@wdc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 03:07:33PM +0200, Daniel Wagner wrote:
> Hi David,
> 
> On Mon, May 18, 2020 at 08:01:58AM -0500, David Milburn wrote:
> >  static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
> >  {
> > +	struct nvmet_async_event *aen;
> >  	struct nvmet_req *req;
> >  
> >  	mutex_lock(&ctrl->lock);
> > -	while (ctrl->nr_async_event_cmds) {
> > +	while (ctrl->nr_async_event_cmds && !list_empty(&ctrl->async_events)) {
> > +		aen = list_first_entry(&ctrl->async_events,
> > +				       struct nvmet_async_event, entry);
> > +		list_del(&aen->entry);
> > +		kfree(aen);
> > +
> 
> nvmet_async_event_free() is called from nvmet_sq_destroy(). I thought
> this function should free all resources. Wouldn't this leak some memory
> if the condition gets false?

Yes, freeing resources is the job of nvmet_async_event_free.  But it
seems like it fails to look at the aens still on the ctrl->async_events
list.  So in addition to this patch, which is correct despite not
fixing the problem David ran into initially, we'll also need another
one to free all theaens left on ->async_events.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
