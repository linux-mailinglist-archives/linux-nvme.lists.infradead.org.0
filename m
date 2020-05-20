Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F611DAB54
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 09:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IKB3oHoAI73m4tpMghyzuT7hShuh3RZOkvfMzKu2jM=; b=gpqH2qNOrTn9w2
	G4EFmYX98UiGc+HpnuwlXrpb/E+MzumWHsengtptkfasWI/eloaUJIiOIOxdpHX8w2kkJ8GPa7bPk
	3hXtAXqOCm10XXGiV7xBARe1W8dgHaAgj+3/842Fwkd1IEaA3CQF+04ne+3+Ofmb4Td2sSUPbbQxn
	py7m5QiQIBHbfOjvB2xmKh4SKP+uleVpNqSkDpX2LJlCbImGVmNNUTSRU0OQtmM+E2Kbk/0Hn4uCP
	0hVsLEYpSDe3XrCxUBuZETSbzjFTPTw68Kaxg/9XHsjNKQwh48cQ/G00rpc9ktVvQ3HkPxDgQQP6D
	1YktkpnaL8mxwQ1ADhyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIlJ-00077u-Vk; Wed, 20 May 2020 07:03:33 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbIlG-00077c-Qk; Wed, 20 May 2020 07:03:30 +0000
Date: Wed, 20 May 2020 00:03:30 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining
 aens in nvmet_async_events_free
Message-ID: <20200520070330.GA26871@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <20200520061613.GA18308@infradead.org>
 <0018af56-e3f9-8730-3c57-c4f19e478014@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0018af56-e3f9-8730-3c57-c4f19e478014@grimberg.me>
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
 linux-nvme@lists.infradead.org, dwagner@suse.de, chaitanya.kulkarni@wdc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 11:59:25PM -0700, Sagi Grimberg wrote:
> > So when the host usually only has a single aen command outstanding (like
> > the Linux host) we might start having a pretty long list on the target
> > for a while until all the roundtrips to deliver them have been
> > completed, and if the admin queue gets shut down during that time we'll
> > need to free them.
> 
> That's fine, but why should it do that in the process loop?

This patch doesn't touch the process loop, it is the free loop when
destroying the admin queue.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
