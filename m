Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762561E4D24
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 20:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ell1OW+Pz78hBjZSXg/8MPl/jXceE3oswLxY65dF5pQ=; b=MB9itC3zHD7UbR
	ZpbHd5ptRS1rxq11nwJStZX+kDA2wgb2zS+sEqv4C2DNOVZxKe7qHroaJTpnn+dIEhtn37lUHC+jw
	0YpLwxuEsrhl1ByEA6Z5LetLN2nUFQ5qySowGshuTaWvDJ37g9GRLoxO9ONIfhXCDAEsy9B3bdNd1
	KBfwEGaHxTRpsuuuxtpZyDuh3RhH1zClTaq7FY1MYdnZTfyTrEcrUSKiymRo6mNzVCSiJ9IRNDPHY
	o33NS9+q08ioUR5rdsKq4em1o8EXTaWO21b3YnfYbdAuyDNpUc4vqDCdFsfQIlVD2yIoDjGXO75qB
	wKpa6hUuUaIBa1auh8Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0rp-0007D4-Ds; Wed, 27 May 2020 18:33:29 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0rg-00076I-3d
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 18:33:21 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0885868B05; Wed, 27 May 2020 20:33:14 +0200 (CEST)
Date: Wed, 27 May 2020 20:33:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: [PATCH v2 1/1] nvme-pci: avoid race between
 nvme_reap_pending_cqes() and nvme_poll()
Message-ID: <20200527183313.GA7331@lst.de>
References: <20200527161352.21227-1-dongli.zhang@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527161352.21227-1-dongli.zhang@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_113320_307389_85575631 
X-CRM114-Status: UNSURE (   5.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com, axboe@fb.com,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
