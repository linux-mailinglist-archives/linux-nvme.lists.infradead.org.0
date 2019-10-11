Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B13D42B7
	for <lists+linux-nvme@lfdr.de>; Fri, 11 Oct 2019 16:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdCejCOBx4snPqmt19Sj/bQtNac7z/p+3OzITtQr8+Q=; b=CvEDNSPWJTt3F6
	l3tpcWTojwhOmYusMcPAhz/FzLy3cEIKvbusIIcUnR1SkJlxIVpnLsezZweFopk7s4NvzO2G4is8P
	uMKVPw9HID1l2+BjRSacygqHutTQphosumu9AbdwrbTIp2ssFAs98dNGmqNiwQ2XJ3OPyNuVvGcYS
	eQRIaF2JztWoJp3rCKEfiHZ39NyhGXcnSQl/mMsr5dvc0fefEdqQKBQe5KoQ07sBJzGq2wGqwLLhW
	/ZSaX3OSLJPyFcVQ0QjXSjUPdFro8rVJ+qwvxrcXy0+EDNoa6YZHGAur+WeMhce0DUMMnb1dlO5xz
	smeHGqS3EQu6z/0oxwAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvpg-0005OS-FH; Fri, 11 Oct 2019 14:23:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvpY-0005O1-9T
 for linux-nvme@lists.infradead.org; Fri, 11 Oct 2019 14:23:48 +0000
Received: from C02WT3WMHTD6.wdl.wdc.com (unknown [199.255.45.63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48D1D206A1;
 Fri, 11 Oct 2019 14:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570803823;
 bh=PGFBP2vScG9XttfiTjwq6V4AVVMagDzEbggOEZO97RQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dWJ1/DtAxhq12bIn5CfP3YKVhYGy1r5J5zvRbcRhXoKHQEMGbPTeq74MiBTQIyIOW
 3ouljTM9GpEydz3qIag0jPCf8XLb5PF6zhwR9onR62wh5byRdH/MD2s4/1L7/xxklY
 PA8Ue6vBI8rUnxDChl6zFqhdSHK/QEskGi/o2U3k=
Date: Fri, 11 Oct 2019 08:23:38 -0600
From: Keith Busch <kbusch@kernel.org>
To: Judy Brock <judy.brock@samsung.com>
Subject: Re: [PATCHv2 5/6] nvme: Prevent resets during paused states
Message-ID: <20191011142338.GA75437@C02WT3WMHTD6.wdl.wdc.com>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-6-kbusch@kernel.org>
 <20190927214121.GK16819@lst.de>
 <20190928002349.GA17232@C02WT3WMHTD6>
 <CGME20191010120317uscas1p1e4483ca19dbb0e550c413c18c5928537@uscas1p1.samsung.com>
 <2f876efff1484f5f95b852584b27efc6@samsung.com>
 <20191010135914.GB56376@C02WT3WMHTD6.wdl.wdc.com>
 <18826c8a6c9545759d25534366e33aab@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18826c8a6c9545759d25534366e33aab@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_072344_350599_96FF3848 
X-CRM114-Status: UNSURE (   8.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 12:51:57AM +0000, Judy Brock wrote:
> > That is rather unusual, which means it is a good test to have! Would you consider porting your case to blktests?
> 
> I'll find out if it is allowed. Where are "blktests"  and is there a pointer to how cases are added?

It was this supposed to be this link to github I sent you before your
email server mangled it.
 
>    https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_osandov_blktests&d=DwICAg&c=JfeWlBa6VbDyTXraMENjy_b_0yKWuqQ4qY-FPhxK4x8w-TfgRBDyeV4hVQQBEgL2&r=YJM_QPk2w1CRIo5NNBXnCXGzNnmIIfG_iTRs6chBf6s&m=Hs0mocSKTjH-thQeB1DSzzm-eTmZH3RXTCGZpRSBlWk&s=PPcqQ2ySml8pGvqNMVV9-KQc2mH-RbyN_3yqeV4yf9A&e= 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
