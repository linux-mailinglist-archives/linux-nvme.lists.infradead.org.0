Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E613D2F72
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 19:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEc0TkClg68OPGe1C62tMYPIYNXhYrJF1gxDc0Gu4bI=; b=OBcHY7Oemk1hNF
	e9H3QYbqJnQ0vmYbAFhFQ6e/DsIev+bWuBKJPKOJYDlDy8QoiHsxTyg3cTH7S/3iG/zW33rmq03LZ
	G8yy8NjDeeKVzrJBuBCMfIH4cQdqyeM+2z+T/7e6dGF8SfNyMo50rHGBX+vZfFF4RJol+EQSllWgR
	h90h8sO7EU5JQ90lKkl+uX25/6Se5/L2A9j0Qi8AHst3O4cmTLBYwHDtLi4Ew4wvrYNvrEoyAyhph
	LmiLjL/Nnc3QQJAKYPEsXSgt8aeAWoHCdRw97RioXtqkNPNXRKKnakRHzsFRtmxWCIXmI/asZT6h7
	I2+X7xhXPo9Yrgnf7FjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIc5y-0000U0-CP; Thu, 10 Oct 2019 17:19:22 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIc5u-0000Sz-5Q
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 17:19:19 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4CC6F68CFC; Thu, 10 Oct 2019 19:19:13 +0200 (CEST)
Date: Thu, 10 Oct 2019 19:19:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>
Subject: Re: [PATCH v2] nvme-tcp: Initialize sk->sk_ll_usec only with
 NET_RX_BUSY_POLL
Message-ID: <20191010171913.GA3104@lst.de>
References: <20191010150622.reqmasxgavug4amm@linutronix.de>
 <20191010150719.GA617@lst.de> <20191010151023.gru6fhrhy7gxxwye@linutronix.de>
 <20191010151444.GA638@lst.de> <20191010152924.jlr53aunkj7de5js@linutronix.de>
 <20191010152958.GA1057@lst.de>
 <20191010153411.6uetttizkto6rv65@linutronix.de>
 <B33B37937B7F3D4CB878107E305D4916D48CFD@ORSMSX104.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D48CFD@ORSMSX104.amr.corp.intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_101918_354347_51834DFE 
X-CRM114-Status: UNSURE (   7.39  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 05:08:27PM +0000, Wunderlich, Mark wrote:
> Should there also be a check here to honor any non-zero value of sk_ll_usec ( via sysctl_net_busy_read ), before setting here to hard coded default of 1?
> Or maybe best to have this as a separate patch to consider?

Let's keep that separate.  If you want to enhance that area, we probably
shouldn't build nvme_tcp_poll at all without CONFIG_NET_RX_BUSY_POLL as
well.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
