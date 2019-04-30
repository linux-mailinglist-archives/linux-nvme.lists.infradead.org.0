Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACDFFCB8
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 17:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjErJDf0rYXc2ICUqjt8dRITfqLsDUmCWuEvP0yWPR8=; b=La2RTyPT4KzhHR
	nVR5Cz5GiiZZ/3xdlXrrXjzEnyj2Kl6ZqKp8yIKhL1qzD6Er0UZBKhM2XOUsK82xtDKtsrenAqqTl
	N5PItKsLDlKp9r0DviHWVyEqAKN2WMPXMg5yWrxnNygslFsdmy2L82B+M02CrJ2URAFr6ztGbOHih
	1o0jw69R41w3Dn8lyXrlexd6PaXCF0QFKF9YKq2bemCIcu96SHPs8gg7zhwPsSUGaMeOnC9hpSrJQ
	kKqf9vS90d4Qos+yg11aL2zfdxhEZw48LgWbJ0PGN6SFcEKO5sGkEL1HUuEilXsZ/6r2oGgZgYyvd
	Pn8GjjFLW5sESKpE+h7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUby-00038Q-Ij; Tue, 30 Apr 2019 15:24:02 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hLUbv-00038C-CJ; Tue, 30 Apr 2019 15:23:59 +0000
Date: Tue, 30 Apr 2019 08:23:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Edmund Nadolski <ednadols@linux.microsoft.com>
Subject: Re: [PATCH 1/2] nvme: nvme_set_queue_count should use descriptive
 macros
Message-ID: <20190430152359.GA11751@infradead.org>
References: <20190429173533.10366-1-ednadols@linux.microsoft.com>
 <20190429173533.10366-2-ednadols@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429173533.10366-2-ednadols@linux.microsoft.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:35:32AM -0700, Edmund Nadolski wrote:
> Implement macros to set/get the number of submission and/or completion
> queues requested by the Set Features command. This replaces the bit
> masking/shifting code which is harder to read and more error prone to
> maintain.
> 
> Signed-off-by: Edmund Nadolski <ednadols@linux.microsoft.com>

I have to say I actually find this much harder to read than the old
version.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
