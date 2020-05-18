Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850D51D7953
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 15:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNJsD76X6TsOwQw1BN2u5p6EVjaapmoZMLaZNS2Hzik=; b=BwDfH/mLDYpvTD
	Qn3xCnxQ/MJUquiL1AnytH8GqMofzj6G9kVVxe/LBHj0XaX4KmZrjj9fZWiu8MsQtE9kcNYB3rCj1
	U/4N3XAovO5FAvRAp8A2BgApyllRZIFq7PNnx7glmuTX5ZO4pPHa55ODt4brX/jvrCi1mVPhZZCZv
	TBl5vZ3eWWcevLSQOLQi28qFstxm6BlUwWDTaM+gOteZQyLP1T3JjppbnCtXXecDeMlp/a9yH9Z+W
	Jbtejyaaj8dlAo57ax8TGyhlMR7/IuTmD7IkGIS+sScrNCDfFS7SVYHpl77qXkqQTinXlqKpW6SVH
	3PiuZniD+atbFA+9kjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafUf-0006Qu-ED; Mon, 18 May 2020 13:07:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafUa-0006QK-Vr
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 13:07:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9E31BAE83;
 Mon, 18 May 2020 13:07:37 +0000 (UTC)
Date: Mon, 18 May 2020 15:07:33 +0200
From: Daniel Wagner <dwagner@suse.de>
To: David Milburn <dmilburn@redhat.com>
Subject: Re: [PATCH v2] nvmet: nvmet_async_events_process always free async
 event to avoid memleak
Message-ID: <20200518130733.5hfckxyskdom3dsv@beryllium.lan>
References: <1589806918-9711-1-git-send-email-dmilburn@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589806918-9711-1-git-send-email-dmilburn@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_060741_165199_36354FD5 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hch@infradead.org, chaitanya.kulkarni@wdc.com,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi David,

On Mon, May 18, 2020 at 08:01:58AM -0500, David Milburn wrote:
>  static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
>  {
> +	struct nvmet_async_event *aen;
>  	struct nvmet_req *req;
>  
>  	mutex_lock(&ctrl->lock);
> -	while (ctrl->nr_async_event_cmds) {
> +	while (ctrl->nr_async_event_cmds && !list_empty(&ctrl->async_events)) {
> +		aen = list_first_entry(&ctrl->async_events,
> +				       struct nvmet_async_event, entry);
> +		list_del(&aen->entry);
> +		kfree(aen);
> +

nvmet_async_event_free() is called from nvmet_sq_destroy(). I thought
this function should free all resources. Wouldn't this leak some memory
if the condition gets false?

Thanks,
Daniel

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
