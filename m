Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8094352090
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 04:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wC8FpAhLPT4jyy2Y4tyRHH6GeQkFJgn6E6NfODlJMKY=; b=PcGKm5exA42DeX
	MvnMxq7dyKJ9BDxQh+9Nyihd7WUgeU1nrMMQXue7+c2B1eAkmZk8isL4ZGhsMJzI1JBmoBuEKbn0h
	yD5xaCZWTeBR4YgwF2unoGYBChm7m/3V/rCE80gFDmwr5IeXCDqxKPrKgZ+fCUIpFc+njQWV8nDxK
	J8ebpb1xYnmprSR7I6Rssi5nEJm4OdHrbn1MTlHdxi9iolhEK+ao3M1Vp331EcKvOgMj/SeDpunnK
	1hP8zJt1L9vTcXV1c4OEig8hXHg9t+JmyV2dvsogHqmbboTWNm3fHr1Z7kFdSTlH22lhM05acvIeS
	dfruaRdol8ffzViU5JIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfayo-0002BP-90; Tue, 25 Jun 2019 02:14:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfayj-0002B1-CB
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 02:14:38 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C410B81F1B;
 Tue, 25 Jun 2019 02:14:27 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C1F3C600CD;
 Tue, 25 Jun 2019 02:14:17 +0000 (UTC)
Date: Tue, 25 Jun 2019 10:14:12 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3 4/5] genirq/affinity: allow driver's discontigous
 affinity set
Message-ID: <20190625021411.GD23777@ming.t460p>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <1ead341c6d603cf138aed62e31091f257cb19981.1561385989.git.zhangweiping@didiglobal.com>
 <alpine.DEB.2.21.1906241740320.32342@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1906241740320.32342@nanos.tec.linutronix.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 25 Jun 2019 02:14:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_191437_439762_B801E9EC 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, bvanassche@acm.org,
 Weiping Zhang <zhangweiping@didiglobal.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, minwoo.im.dev@gmail.com, Tejun Heo <tj@kernel.org>,
 cgroups@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Thomas,

On Mon, Jun 24, 2019 at 05:42:39PM +0200, Thomas Gleixner wrote:
> On Mon, 24 Jun 2019, Weiping Zhang wrote:
> 
> > The driver may implement multiple affinity set, and some of
> > are empty, for this case we just skip them.
> 
> Why? What's the point of creating empty sets? Just because is not a real
> good justification.

Patch 5 will add 4 new sets for supporting NVMe's weighted round robin
arbitration. It can be a headache to manage so many irq sets(now the total
sets can become 6) dynamically since size of anyone in the new 4 sets can
be zero, so each particular set is assigned one static index for avoiding
the management trouble, then empty set will be seen by
irq_create_affinity_masks().

So looks skipping the empty set makes sense because the API will become
easier to use than before.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
