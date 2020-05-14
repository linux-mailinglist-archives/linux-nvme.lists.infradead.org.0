Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA8B1D34B5
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 17:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctSlRXv9GDTJcXVunKlg+DEWv+P4QEJD/mTdGU7XXDw=; b=sFEit85nmz2HYE
	OlahemKgDLg70nM11GjiHajcuLlYX6M2FY2hwYS53b+RE8UwE21Ar+KhnRoXW39KaQXiWA/wQp8G+
	rSbIrDBpvDMGNQzBnKvaRbbtWu7zzv0j7lkj4erXKeBZei1mB1kgrJ5LxiHyA89eKAADg/AJZFf6n
	nFjrdTU+bWa0ZP/Ys4gUiTf5APHgYNlRVHnofRl3n9L3LGNvCR5kMJwUHkOlMXYDoPJIe9gCJDOc2
	12D/+tNDno/GDwC8hp+q0FC1Dh5sT+FU/6WvsQdadir0UoixWtMloIBpWV50CQlrcL1Y0TiHGWN3g
	Bh3h6s4BGyuZ/nEmzWRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFXJ-0008FC-CZ; Thu, 14 May 2020 15:12:37 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFX4-0008C0-IF
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 15:12:28 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 38C3C68BFE; Thu, 14 May 2020 17:12:20 +0200 (CEST)
Date: Thu, 14 May 2020 17:12:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Wu Bo <wubo40@huawei.com>
Subject: Re: [RESENT PATCH V2] nvme/core:disable streams when get stream
 params failed
Message-ID: <20200514151220.GC29964@lst.de>
References: <1589357893-551688-1-git-send-email-wubo40@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589357893-551688-1-git-send-email-wubo40@huawei.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_081222_769031_24E82594 
X-CRM114-Status: UNSURE (   5.29  )
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
Cc: linfeilong@huawei.com, sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, liuzhiqiang26@huawei.com, axboe@fb.com,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
