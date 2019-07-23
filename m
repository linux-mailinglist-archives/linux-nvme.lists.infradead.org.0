Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43B071C1A
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 17:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=m1URAE3BX5MAta
	x+4GhpVXXgngwVEl7idIrcK7NIJq9uEyqe3MQUs2EiibqtUo9a1g2UkZLlIeoeR5x+10lAJ8P3aXZ
	YlH6vgywM49ufIgjxhhZjZ/aUSuK6bIx/Ql4WMXvcYaHLSqjoGS74sz6Eh2iLMdI+bITmuzoK7HXu
	PxruwkasiJ8RcaWroQXWj4xV6jIeO4e60LJcy33wRm9LPXH2G56y4co3LUPrmpMsWs255Kfqo8CUl
	a3WipVQmgUGFNuHKCNf7cfb4xEnLv2klFsaQfut6zbt/1LUgbFANg5eUj8/jQzpTfY867IPrt4zcS
	azJPX6cH7xlm9graIf3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpx1D-0006DB-M2; Tue, 23 Jul 2019 15:47:59 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpx0x-0006CU-63
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 15:47:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 335AF68B02; Tue, 23 Jul 2019 17:47:40 +0200 (CEST)
Date: Tue, 23 Jul 2019 17:47:39 +0200
From: Christoph Hellwig <hch@lst.de>
To: yangerkun <yangerkun@huawei.com>
Subject: Re: [PATCH] Revert "nvme-pci: don't create a read hctx mapping
 without read queues"
Message-ID: <20190723154739.GA1331@lst.de>
References: <1563852193-6895-1-git-send-email-yangerkun@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563852193-6895-1-git-send-email-yangerkun@huawei.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_084743_369681_67B171D9 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alan.mikhak@sifive.com, yi.zhang@huawei.com, hch@lst.de,
 linux-nvme@lists.infradead.org, houtao1@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
