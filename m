Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83FFA7B05
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Sep 2019 07:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ORJ8FSHwvrjy3SntT+q5yjUPb2E0RP4G1ZgXwJXJAQ=; b=nu5oRApsN5kjpx
	xitKK3o77ew0ntoqRrr5poOgprwVgk07YlE4hcRodIEG+ZUAVYtnse2hAEnftPjpkEGF8v9ZepTPK
	GP2QxQKmJgrjMoJtEKzVcGzPHq6uwdAgtPIU4i5aE+yzcxZGoVvDHaQGQ3ROp5EM4Z3fiL/qVvTdr
	81Aa1fsgG9g1FKrH+c/TspUzm+G2kY3KAeFwMufdB502nL6krNj5vI46VHENGp9Bs7KmcHMLWvSOt
	WT1vFgLu89tIAkqnUBaZKW70dRu3kXF1hMHgWbijB4Z/Brj4g9ouo4AoI6kQH2oUrQaDlNgcVYic2
	ThLLMf+LMZPHs/zp0V0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OFU-0000Sy-67; Wed, 04 Sep 2019 05:54:32 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5OFL-0000SX-KV
 for linux-nvme@lists.infradead.org; Wed, 04 Sep 2019 05:54:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2605A227A8A; Wed,  4 Sep 2019 07:54:20 +0200 (CEST)
Date: Wed, 4 Sep 2019 07:54:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 3/4] nvme-tcp: introduce nvme_tcp_complete_rq callback
Message-ID: <20190904055419.GD10553@lst.de>
References: <1567523655-23989-1-git-send-email-maxg@mellanox.com>
 <1567523655-23989-3-git-send-email-maxg@mellanox.com>
 <c5757c95-2a4f-410d-a275-85d8c9da737f@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c5757c95-2a4f-410d-a275-85d8c9da737f@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_225423_823838_51756D55 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: axboe@kernel.dk, keith.busch@intel.com, martin.petersen@oracle.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, shlomin@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 12:15:48PM -0700, Sagi Grimberg wrote:
>
>> The nvme_cleanup_cmd function should be called to avoid resource leakage
>> (it's the opposite to nvme_setup_cmd). Fix the error flow during command
>> submission and also fix the missing call in command completion.
>
> Is it always called with nvme_complete_rq? Why not just put it there?

Yes, unless I am missing something we could call nvme_cleanup_cmd
at the beginning of nvme_complete_rq.

Max, can you send one series for all the nvme_cleanup_cmd fixes and
cleanups and split that from the PI work?  That might be a little
less confusing.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
