Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD7192472
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 15:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCA/jbLuIA9A2e709jBDUcVaGcJUpIycwjxHcuH1UO0=; b=p8hA5co2arxkTs
	l/1QCUwkidpm6g9AH/txlB7lj4tSkv1fwjFoZJhD8VoyEcCw8nTEvq5Vhjw4Bw9G2xFahdwA4v0VW
	+wkBuoKGc7UVsHgCUFTPYqfiNwydTxIgZhYCUwESUcpoE5DoQamz/Ma5ZWeae58P6t3FteYLE+RFY
	Dx4C4shH60JMi2/YDeilLr7HFevfE/bnEB1PI18jLhjZbgVJOsJk/U0Wmn8uaaCwErF2Aw191rpHz
	8NxKWdHutIQfLz8WiuyLRKBUUAY/+iMsHsWm1+jh6YunokQbjNWR2XcVBSWBKnIraLx+dJU65ZNRZ
	EIeiKX+nk8lRKiST5hPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhUE-00073H-KT; Mon, 19 Aug 2019 13:14:14 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhU8-00072n-Qt
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 13:14:10 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hzhTy-0004Bx-LY; Mon, 19 Aug 2019 15:13:58 +0200
Date: Mon, 19 Aug 2019 15:13:58 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V6 2/2] genirq/affinity: Spread vectors on node according
 to nr_cpu ratio
In-Reply-To: <20190819124937.9948-3-ming.lei@redhat.com>
Message-ID: <alpine.DEB.2.21.1908191511440.2147@nanos.tec.linutronix.de>
References: <20190819124937.9948-1-ming.lei@redhat.com>
 <20190819124937.9948-3-ming.lei@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_061409_015779_1CF1E01D 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019, Ming Lei wrote:

> Cc: Jon Derrick <jonathan.derrick@intel.com>
> Cc: Jens Axboe <axboe@kernel.dk>
> Reported-by: Jon Derrick <jonathan.derrick@intel.com>
> Reviewed-by: Jon Derrick <jonathan.derrick@intel.com>
> Reviewed-by: Keith Busch <kbusch@kernel.org>

This version is sufficiently different from the previous one, so I do not
consider the reviewed-by tags still being valid and meaningful. Don't
include them unless you just do cosmetic changes.

Thanks

	tglx

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
