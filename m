Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B859A45D
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 02:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jAINbWrOwrupYOlEFSrF5GtWy3D2dOk1Fcyg+0RJ0w=; b=o6LobvHwG37vW5
	9emjl4xcjuvuCxbYk7eDlMsaG429SIQNQQh+E9APa0NbDzfNfJckPNR6GGN169sCpEBbh2W2ApPCN
	r7PbLPNKoTJai7edEG9jbZy4gSG6A5RPe/bchCJRItjXP6n0Kstii+RtBWL2nvniCQkZFvNfsFkln
	hWHlojj1fQ4B0nid2upuMdQgJGjhEAbswK4ZN5eQ6tYnWc9U7iYaFneUlrpqZuvJMKKxzMvWrQXyD
	w7zTGFNXy+Kg107KzcfF1kQVhaykxwF5/3FtfMO7b66K0roAhqdb2t/kBQpfvQ20qK5y5FGAZWB/R
	vPQGtF4qqzlQKbCEKaAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0xeo-0002Qh-G1; Fri, 23 Aug 2019 00:42:22 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0xeg-0002QP-Sq
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 00:42:16 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x7N0fnv4022896;
 Thu, 22 Aug 2019 19:41:51 -0500
Message-ID: <fb5aa2db6b54edab69a8abad254b346dd3d7b205.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 2/4] nvme-pci: Add support for variable IO SQ element
 size
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Date: Fri, 23 Aug 2019 10:41:49 +1000
In-Reply-To: <4fc11568-73fe-c8b5-ac29-d49daee9abad@grimberg.me>
References: <20190807075122.6247-1-benh@kernel.crashing.org>
 <20190807075122.6247-3-benh@kernel.crashing.org>
 <20190822002818.GA10391@lst.de>
 <87e1fea1c297ef98f989175b3041c69e8b7de020.camel@kernel.crashing.org>
 <4fc11568-73fe-c8b5-ac29-d49daee9abad@grimberg.me>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_174215_081129_19562AF6 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Paul Pawlowski <paul@mrarm.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 11:02 -0700, Sagi Grimberg wrote:
> > > 
> I'll fix it. Note that I'm going to take it out of the tree soon
> because it will have conflicts with Jens for-5.4/block, so we
> will send it to Jens after the initial merge window, after he
> rebases off of Linus.

Conflicts too hard to fixup at merge time ? Otherwise I could just
rebase on top of Jens and put in a topic branch...

Whatever works for you.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
