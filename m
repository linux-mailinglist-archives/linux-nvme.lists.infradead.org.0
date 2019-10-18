Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D23DC6F9
	for <lists+linux-nvme@lfdr.de>; Fri, 18 Oct 2019 16:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBy5LnWW+h/+FPdLwX3eRWaMFvBB5YG1nMqmK1Z7DBo=; b=OPaPPfRU9GJJBN
	xo1SfvwAPs1U5BFeZfiJQACBaqLxEwrHGu6lBQfvGPsiRyH5bxQvg09sHIe7++h+OxaNFecs6FRPo
	f7HBSebj6rweBSIFI0cK9dWyEjJL5tJhCulitm1G4GrP4K2QCoHo2JfprrAfjjIQvbWQ7ktm6Fa6r
	o1rjonubJnC3OHA3tZjvbhnlt7jk9zwI6gjT8Yo5j/WkbIf4SytdaFaQb2tq9MxDQSm9+Ghwj6Oia
	tRkRxt4jHcgRYMakS0SjjiuETv7kIFhUriMHzUccwqyjU0uoWfMcF+L7Uf9Sm4ASc5n4cyapcO+dA
	2JYtMjsvVOjRukZqgSBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSxT-0004Ok-M8; Fri, 18 Oct 2019 14:10:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSxP-0004OR-C6
 for linux-nvme@lists.infradead.org; Fri, 18 Oct 2019 14:10:20 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90A0B21925;
 Fri, 18 Oct 2019 14:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571407818;
 bh=Tgg+hNEtc66TMH9GlXFtMJSnNvmgVNfAL1vb+W/dEUY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n0kC7kb+xztdMQSKcSilf3Q7LQ5D0hiibvm/arAXa+I2WNjj1X5nIxJ4wVZn7enJO
 yUfrUozXu5/FSSnFrO9zZrpzcQxCftk7ocAbPmwe3a3THSZB4bV0sgT8Vv/G6xMput
 2ipL5caUGniKwKp+9PM0f2HbiU8r/1BrwAChxSGU=
Date: Fri, 18 Oct 2019 23:10:13 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2] nvme-pci: Set the prp2 correctly when using more than
 4k page
Message-ID: <20191018141013.GA7124@redsun51.ssa.fujisawa.hgst.com>
References: <20191018005926.GN27363@pek-khao-d2.corp.ad.wrs.com>
 <20191018025314.39229-1-haokexin@gmail.com>
 <20191018064812.GA23002@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018064812.GA23002@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_071019_434182_999F3C68 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Kevin Hao <haokexin@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme-5.4, thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
