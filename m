Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D41DE942E
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 01:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFrdanssNUki0xWmw6LobMYEwH2hiQdHj/U4RVwHSUs=; b=GOkRxkKPjnf5g+
	K79CAtBRLnhAnHCU/f3r7ihSlAdT6YFlnn/ktDkHuASDFg12wXfiy8ZSlOWbeoMs1Mlm1vbyD3LNd
	QLFFHFsQFtACuq8x2c9PjgoDARQMqUTWCwYhWhFiJuz015ZQlTQJ3twAxQlVqjgWDtEcXH47GR7AE
	zldbcJGJgfL5wZitClfjqB+D5T4k8JiCubRt8qrwe5Ys/wh5gPk4SdZKp7SvoqTCVg/1EIjonXJSL
	U/lkqTUvl3X8hfMI2im+5HNSnEkM7a2WQzlMgOVGYiuPnBuo9ZoN+KC6Pa+HT14ZfhNvc3Dv1mov7
	HD3xgflHcYUKDyq7c9TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPc8S-0005Z7-RA; Wed, 30 Oct 2019 00:46:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPc8N-0005Yo-K9
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 00:46:48 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49B7920659;
 Wed, 30 Oct 2019 00:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572396407;
 bh=kU/ViuSuZqTFjDVM7ycCIhIS9CF04caKOB2FC85DW9w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zLAkol/6GiGQNUfYNXy9eHExVTgVQWNpUj7yhjWYN0x1miMcE+WjPVw5lwd17I3dV
 8oPzdXO4mqEn4A8UQi+DCQCI6W5Zu5KAOOlfqQ8ocYsMCqvsFPEZr6sVxlVnNiyWSu
 vynJN38Jrb2rcPBGAWz5e/gTTxuqt+HTi8tOmzcg=
Date: Wed, 30 Oct 2019 09:46:43 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/1] nvme-rdma: fix a segmentation fault during module
 unload
Message-ID: <20191030004643.GB15332@redsun51.ssa.fujisawa.hgst.com>
References: <20191029144227.108450-1-maxg@mellanox.com>
 <badcd22c-54ef-a4ab-2080-55f697b184e8@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <badcd22c-54ef-a4ab-2080-55f697b184e8@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_174647_677899_3812DC9C 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Max Gurtovoy <maxg@mellanox.com>, israelr@mellanox.com, hch@lst.de,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied to nvme-5.5.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
