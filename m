Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D4A63D63
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=FfsEILMEhNNHf5
	jdLpOjhZk/me87Nh0rKj8SHLLdHnL9os1V0XWgyXgEq4z22SIso4y5MC3Oaa98Ar+fIS7cv5fpLSl
	t4+/CTGbWVe/AcX3niXK17AYe1QyFuDv8mBICr4/PpZ356RLuq3YZANuTyEepP+wGVr6KYJ0nCJhF
	ghvKHEE9v9/STsZVWnErOasnbD4Ej72o34hRwSdE3D+Dv87zpfP2WmtYLhx8htK0QlQnYepG/2WQR
	tzsLAn3PMB3S62nAQ0I3rsJjjv69oliWzV+tU3Vj89WXoO45eo3uzIMcAz7TL9szdwy1t5Ytjocow
	pxz4ilC+9m1eIYXFLWkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxlV-00033M-HC; Tue, 09 Jul 2019 21:35:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxlH-000335-UX
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:34:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0B87668B02; Tue,  9 Jul 2019 23:34:54 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:34:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Tom Wu <tomwu@mellanox.com>
Subject: Re: [PATCH] nvme: add delete completion and submission queue to
 admin cmds tracer
Message-ID: <20190709213453.GA9815@lst.de>
References: <1562235594-7847-1-git-send-email-tomwu@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562235594-7847-1-git-send-email-tomwu@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_143456_141939_755A3AB4 
X-CRM114-Status: UNSURE (   4.69  )
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
Cc: sagi@grimberg.me, Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, keith.busch@intel.com,
 Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 hch@lst.de
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
