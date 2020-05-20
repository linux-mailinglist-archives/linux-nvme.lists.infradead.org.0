Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C1A1DBB81
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XvWhtBy0ypzfrhaXGHd78oWvQ73wmd01dAn3OBC/1g=; b=Lr1Dntafvyh8Ev
	JgVYudwpRIAxVNZFsZxL/SD9c9GyWWOJ9ImrivHI7A5TAvEdHikwaskF3sCTRAV7nIb9CaaRsC5gB
	mOVdKIhI3+xPuyRQcX4eaamdVTw7K0rFQ0+zUFy89hmzKAz1WRAfrVsxBh5VyKISZjk7YExUYmmSe
	ukp5y1N/E9HvukQQPqXmB1N1lLROMISsqYYEqkr1ykH4uH0rk6BVvuB6dEHjpoa7d0pUArOdIKVcD
	mnCeK3M+3zavEMSlNilVZB9b0EpMB7LcTpvmMo098YSAmhdShv5Ypne14N4v5N4FD9H13KWsDCqBo
	TGzPmCN8JiCe6CYAuimQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSYJ-0008L0-4x; Wed, 20 May 2020 17:30:47 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbSYF-0008Kd-KZ; Wed, 20 May 2020 17:30:43 +0000
Date: Wed, 20 May 2020 10:30:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/2] nvmet: avoid memleak by freeing any remaining
 aens in nvmet_async_events_free
Message-ID: <20200520173043.GA21542@infradead.org>
References: <1589828396-144513-3-git-send-email-dmilburn@redhat.com>
 <388242d3-5ccc-d694-c7a0-ac489f63f26a@grimberg.me>
 <20200520061613.GA18308@infradead.org>
 <0018af56-e3f9-8730-3c57-c4f19e478014@grimberg.me>
 <20200520070330.GA26871@infradead.org>
 <d353aa1a-cef3-d2f6-66de-92cc18cd97aa@grimberg.me>
 <20200520071526.GA7008@infradead.org>
 <c0379f95-246a-3fd6-9ec9-4ee814562c8d@grimberg.me>
 <41bae172-289e-1407-93a6-4147491a346c@redhat.com>
 <c3bef33b-f786-e4db-afbc-89e49c159c23@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3bef33b-f786-e4db-afbc-89e49c159c23@grimberg.me>
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

On Wed, May 20, 2020 at 10:19:27AM -0700, Sagi Grimberg wrote:
> I don't think that patch #1 is required to fix the issue, can you
> confirm that? Christoph said he has some more cleaning up in this
> area.

1 is really just a cleanup.

> Christoph,
> Do you want me to send a formal patch for this?

Take a look at what I just sent.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
