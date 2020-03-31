Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03404199BBF
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 18:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cil43MCec5ijV02sG0vMWiAH/Lg+C2svgl4xM0+1848=; b=Qz7RrxHxRLVeJ8
	2HDq2sDj7/eBGF4z+HZay+kIYF6WtFZpO6+qdXWsPRLKX4gCPndiZjWxsF5eBklmORN32NTLwPM8i
	ArNTIPP23t0IVnHqhb+qT/WMrDFswZ18UFkCJUt6TvkxC2NyuNFTX+dBg5lcpvmmBOS1Asn2RjNDy
	z26Cf6qGwQ5IJt9OK4NCra9DU/DxSeNQPwax6C1H/soddOaST/8G/pdL28oxW5MA8cYIDj3OhY4gI
	JDXJCP9NG+5pVq0pI3G8peGCNH+iC/W8ri+yJcGfMfhnzri2MKwnSaTXXvIafTvFJIV8/vv6ISCGP
	viXOG0OE6C7q/tjyGltw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJsh-00035S-7P; Tue, 31 Mar 2020 16:36:51 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJpd-0006Ow-Dq
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 16:33:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E1C3168BFE; Tue, 31 Mar 2020 18:33:37 +0200 (CEST)
Date: Tue, 31 Mar 2020 18:33:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Weiping Zhang <zwp10758@gmail.com>
Subject: Re: [PATCH v5 0/4] Add support Weighted Round Robin for blkcg and nvme
Message-ID: <20200331163337.GA25020@lst.de>
References: <cover.1580786525.git.zhangweiping@didiglobal.com>
 <20200204154200.GA5831@redsun51.ssa.fujisawa.hgst.com>
 <CAA70yB5qAj8YnNiPVD5zmPrrTr0A0F3v2cC6t2S1Fb0kiECLfw@mail.gmail.com>
 <CAA70yB62_6JD_8dJTGPjnjJfyJSa1xqiCVwwNYtsTCUXQR5uCA@mail.gmail.com>
 <20200331143635.GS162390@mtj.duckdns.org>
 <CAA70yB51=VQrL+2wC+DL8cYmGVACb2_w5UHc4XFn7MgZjUJaeg@mail.gmail.com>
 <20200331155139.GT162390@mtj.duckdns.org> <20200331155257.GA22994@lst.de>
 <CAA70yB6PYH-W8-RRd7nxXOvpg6n+_-h_BLm6JA3EbLmsYG-ZSw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA70yB6PYH-W8-RRd7nxXOvpg6n+_-h_BLm6JA3EbLmsYG-ZSw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_093341_625713_11BD9DD3 
X-CRM114-Status: UNSURE (   7.12  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Bart Van Assche <bvanassche@acm.org>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Minwoo Im <minwoo.im.dev@gmail.com>, cgroups@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 12:31:17AM +0800, Weiping Zhang wrote:
> Would you like to share more detail about why NVMe WRR is broken?

Because it only weights command fetching.  It says absolutely nothing
about command execution.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
