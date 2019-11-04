Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A311EEDBEE
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 10:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hvy6kTi4InwVhFZXkGlacbxBJMVXRegGEUmCj6NeXKY=; b=tVKrI8R8a099hd
	BK3EOZNx112AjD4xXU9k3ZQ7rCT4ZS/vNpfOgFjWjOx0rMsZYEb6NeLsElQKz201r8izsEzfuTGoc
	Oo0IeXbjqrjeji1Fvk8nmoP2/fDWogSi6G70UI2B78fEXvlk6bkMwHMzpy91m0XhIfxqtDo6SlMhB
	cQK/FsgObd/vse68mySS0Y7xerTuoDBjBnSADeq7/QHCxLYH11v8FqgXAn++upG8rW31sGbprH+os
	WQHTHts4oEYRW9PerVURzSuDC+GmS2a7cEP4XlnKTngOi0SyUAd+889Vhh4b77FHPObI+3FZ8fupy
	YIqP6sbi+rQVJki9X04Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZ0b-0003kK-I9; Mon, 04 Nov 2019 09:50:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZ0W-0003jt-Mz
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 09:50:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8632EB2E1;
 Mon,  4 Nov 2019 09:50:41 +0000 (UTC)
Date: Mon, 4 Nov 2019 10:50:34 +0100
From: Johannes Thumshirn <jthumshirn@suse.de>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: [PATCH] nvmet: Always remove processed AER elements from list
Message-ID: <20191104095034.GA3193@linux-lxv2>
References: <20191103201310.24785-1-chaitanya.kulkarni@wdc.com>
 <20191104081338.gdrk2a4mlov2io6s@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104081338.gdrk2a4mlov2io6s@beryllium.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_015044_895837_A4BCA5EF 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 09:13:38AM +0100, Daniel Wagner wrote:
[...]
> BTW, I got feedback how to produce the oops on our custerms setup:
> 
> Test Steps:
> 1. Create two targets on node n1 as target side (tgt1 and tgt2)
> 2. Run perf to write data to tgt2:
>    sudo ./perf -q 1 -w read -o 4096 -t 60 -r 'trtype:RDMA adrfam:IPv4 traddr:192.168.219.4 trsvcid:4421'
> 3. Deleted tgt2 node n1 configuration during perf execution
>    and reboot the node n1 automatically.

I assume thhis "perf" is some kind of performance test. So it should be
possible to create a blktest recreating this issue.

I'd translate the "perf" line into something similar to 'fio -rw=read -bs 4k \
--time_based --timeout=60 --iodepth=1' and then running on a mpathed
nvme-loop and delete one of the controllers while the IO is running. This
should be a fairly usual multi-path test. The only thing I can't see yet
is, how we end up with unprocessed AENs here.

Byte,
	Johannes

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
