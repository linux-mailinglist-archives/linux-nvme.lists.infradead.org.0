Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A89594CB
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Az1EGFdgFg0D5alm16zBJ+7/GTIoz5xbIuQiTB+aqpU=; b=Lq21RwtgRdPMZP
	6YMnBaToQ08+C3hvfCgLUGS+gvHTkHo+J1ngNStL7aLEJYEfY2AbseEG66LfIG1CVgE15sTSxUqgZ
	uC5gKOkn1oo5a0vqQgbvHJEsvbROejkwF1BLdYmcGWYV54thQqhBjtI6sNvE9A7g79hBhcD32W6YO
	hre2EfpXyNtrcx3tx24AU+dioGNTliF+p02dlRtarkCNxBeUztSQd3JUb/iS6yZaTL5Xvyb1kpPm3
	HezlHZefsEgVVXD5sy/D5lJ3d4mOwxMEzFVAtOphYZ5DEeSoIzj76sIaiUseeeDG/YcNPwWB3bNpm
	fYgla2ecvRdQ1VsZbuJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglGB-0001bH-Ut; Fri, 28 Jun 2019 07:25:28 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hglG2-0001az-TF; Fri, 28 Jun 2019 07:25:18 +0000
Date: Fri, 28 Jun 2019 00:25:18 -0700
From: 'Christoph Hellwig' <hch@infradead.org>
To: kanchan <joshi.k@samsung.com>
Subject: Re: [PATCH v5 0/7] Extend write-hint framework, and add write-hint
 for Ext4 journal
Message-ID: <20190628072518.GA25577@infradead.org>
References: <CGME20190425112347epcas2p1f7be48b8f0d2203252b8c9dd510c1b61@epcas2p1.samsung.com>
 <1556191202-3245-1-git-send-email-joshi.k@samsung.com>
 <20190510170249.GA26907@infradead.org>
 <00fb01d50c71$dd358e50$97a0aaf0$@samsung.com>
 <20190520142719.GA15705@infradead.org>
 <20190521082528.GA17709@quack2.suse.cz>
 <20190521082846.GA11024@infradead.org>
 <20190522102530.GK17019@quack2.suse.cz>
 <00f301d52c1d$58f1e820$0ad5b860$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00f301d52c1d$58f1e820$0ad5b860$@samsung.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-block@vger.kernel.org, 'Jan Kara' <jack@suse.cz>,
 "'Martin K. Petersen'" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 'Christoph Hellwig' <hch@infradead.org>, anshul@samsung.com,
 linux-fsdevel@vger.kernel.org, prakash.v@samsung.com,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 06:17:29PM +0530, kanchan wrote:
> Christoph, 
> May I know if you have thoughts about what Jan mentioned below? 

As said I fundamentally disagree with exposting the streams mess at
the block layer.  I have no problem with setting a hint on the journal,
but I do object to exposting the streams mess even more.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
