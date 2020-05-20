Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007CC1DABBF
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 09:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcUcQlViVVPAXnoGIr61t8adnk3nbrh+HaiFZYWVNao=; b=maHFuP4pFnBoTB
	6lxnw3efOvFrzK5CdLBfFjM5c1lVqhGVQ6k8ayU10/1zUmsIh2BwqIfjExeDeTTjxVEkQN24zYlHk
	SGijt7jlMln+DdOG24raIW2rNLtJaEB/Rta9EDa1jMPry1vz5NYWCgEEnO4ZeAPjc2zPj+wuxTGjU
	ZfhIDOswDOY1+odmsORA+WrRIKK82Q+hpP9dwPGmaSUsJc5FH0/i0MFJN/5MBUPcQBxCiv8bVLEgm
	6QAV3P71W2E0gwrqnDwYu7ROSEn8yYbDRELBGmG5Z/PC5pUPI5CUL+FQJDxoq9NXaZjt9eecuNGnH
	Ycju2fu17M7o9BAlFPRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIws-0000i7-GN; Wed, 20 May 2020 07:15:30 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbIwo-0000hI-Ha; Wed, 20 May 2020 07:15:26 +0000
Date: Wed, 20 May 2020 00:15:26 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining
 aens in nvmet_async_events_free
Message-ID: <20200520071526.GA7008@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <20200520061613.GA18308@infradead.org>
 <0018af56-e3f9-8730-3c57-c4f19e478014@grimberg.me>
 <20200520070330.GA26871@infradead.org>
 <d353aa1a-cef3-d2f6-66de-92cc18cd97aa@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d353aa1a-cef3-d2f6-66de-92cc18cd97aa@grimberg.me>
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
Cc: Christoph Hellwig <hch@infradead.org>, David Milburn <dmilburn@redhat.com>,
 chaitanya.kulkarni@wdc.com, dwagner@suse.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 12:08:54AM -0700, Sagi Grimberg wrote:
> :) I guess the pandemic got to me...
> 
> Things make a lot more sense now. But don't we need to move the aens
> free to after we remove the controller from the subsys->ctrls?

Yes.  I also think we can clean up a few things here.  How about I apply
the series from David now and send a few additional fixups on top?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
