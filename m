Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC8F1DAA7D
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 08:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPSFCDYmeyFZStxetaJTJSM2k1VtiMqA+eFTgwRFWug=; b=TGxzu731g09V7q
	M/q0IOMqgEqwBFcbeUud7CQmDvava+TCbAqKZsijz1PQ9j8Ya2WyLlOhNJ4DtyI8iwCJpWLgXT7SS
	os1tsdtgckpY2ibyOt2lgIlLYwdQ39A4EZxu7CbgXutFs2R/Vu/kq7FaSnXdhXIO08QBu2WmP8WqD
	8NzUncSsNwmoB7TAsGk2/C7MYwk/ngIVAfJP+vUBkNVtp4PLltb9EbrM3evpcuuw9DzYOZZqSGlk9
	0IUBnNBnL6SfFkmUG8qg8OPsvTGPcwDoHaSGMU2US8vRzf+F/NJc+TD8N29FpRWboC0dsyVPTIp5M
	56OWQBlVI81elxQ+80Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbI3z-0008QT-Uh; Wed, 20 May 2020 06:18:47 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbI3v-0008QA-UY; Wed, 20 May 2020 06:18:43 +0000
Date: Tue, 19 May 2020 23:18:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining
 aens in nvmet_async_events_free
Message-ID: <20200520061843.GB18308@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <ced87004-a580-853f-2a27-e3acb789637e@redhat.com>
 <a47fb849-df48-1d7e-d34a-269257487393@grimberg.me>
 <37746101-6300-4364-079d-c6850d2d55d5@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37746101-6300-4364-079d-c6850d2d55d5@grimberg.me>
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
Cc: hch@infradead.org, David Milburn <dmilburn@redhat.com>, dwagner@suse.de,
 chaitanya.kulkarni@wdc.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 01:51:38PM -0700, Sagi Grimberg wrote:
> Umm, and this section needs to be removed now of course...
> 
> The loop here needs to be:
> --
>         mutex_lock(&ctrl->lock);
>         while (ctrl->nr_async_event_cmds) {
>                 aen = list_first_entry(&ctrl->async_events,
>                                 struct nvmet_async_event, entry);
>                 list_del(&aen->entry);
>                 kfree(aen);
>                 req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
>         }
>         mutex_unlock(&ctrl->lock);
> --

->nr_async_event_cmds has nothing to do with the number of entries on
->async_events

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
