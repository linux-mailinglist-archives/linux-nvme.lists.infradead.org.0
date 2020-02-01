Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4065314F752
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Feb 2020 10:09:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2wvMq8TnEC2GrNR2DZDejLxucz9X1v/lAMTCwd9Iwk=; b=BogMTJWwokEoOZ
	GLH65Kg0bu0GaIvWXGOsHXJ5c5ei7CJ2PDyZhI22WATExkalkshCoxBV6ITJDAPnTv/veDfJF/4Mm
	HIG2fe/QcQzKLizR/9f4U5TRtNBvuB+z/Orosak9odzeV0RsBf+vjIt+xWDGGGipZZzp9+Ns2HSH3
	m2hnxvrW7p7aJqlRUJn+QGzt/prJGHxEpTdWd6U0w8SWi355CF0my/U2WfquLNrg+wFlTGZ3rN8a6
	3RGRDq2VV+9ryzrjWBbZ1afnaIpwvfTesLnlGo6FLi3kP8LeVjqokvbO5bob7/ulKH10b9GJBXJWE
	JzqY3ujURKHYJx9V33Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixom6-0000l6-Ki; Sat, 01 Feb 2020 09:09:10 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixom0-0000kb-6U
 for linux-nvme@lists.infradead.org; Sat, 01 Feb 2020 09:09:05 +0000
Received: from 51.26-246-81.adsl-static.isp.belgacom.be ([81.246.26.51]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1ixold-0003oU-V5; Sat, 01 Feb 2020 10:08:42 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 7F0CE103088; Sat,  1 Feb 2020 10:08:36 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Weiping Zhang <zhangweiping@didiglobal.com>, axboe@kernel.dk, tj@kernel.org,
 hch@lst.de, bvanassche@acm.org, keith.busch@intel.com, minwoo.im.dev@gmail.com,
 edmund.nadolski@intel.com
Subject: Re: [PATCH v4 4/5] genirq/affinity: allow driver's discontigous
 affinity set
In-Reply-To: <c044e71afa25fdf65ca9abd21f8a5032e1b424eb.1580211965.git.zhangweiping@didiglobal.com>
References: <cover.1580211965.git.zhangweiping@didiglobal.com>
 <c044e71afa25fdf65ca9abd21f8a5032e1b424eb.1580211965.git.zhangweiping@didiglobal.com>
Date: Sat, 01 Feb 2020 10:08:36 +0100
Message-ID: <871rrevfmz.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_010904_381222_1BF87626 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Weiping Zhang <zhangweiping@didiglobal.com> writes:

> nvme driver will add 4 sets for supporting NVMe weighted round robin,
> and some of these sets may be empty(depends on user configuration),
> so each particular set is assigned one static index for avoiding the
> management trouble, then the empty set will be been by
> irq_create_affinity_masks().

What's the point of an empty interrupt set in the first place? This does
not make sense and smells like a really bad hack.

Can you please explain in detail why this is required and why it
actually makes sense?

Thanks,

        tglx

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
