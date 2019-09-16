Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8E8B360D
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 09:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgVXsRM8nyq8ICljSRkYNbIhlxVgL9zei0pShmBmFlY=; b=eEqF4zJL9KghY1
	S7+NrCYUduyVcy4vLS2ttvi0ZdZoV0VNju6E3oPbgAFUN47tHPF1HuCNTx/hio2t4cYDL5jCCNJId
	TbcFRCjdbtc7xycczOwI1nNmowc/6e35giEvA+EPAaUfwtWGxe3gFSFSaV1roasybn341ff4UKLpo
	8nZ5LB1Qp8f4J+RLgw09D1uG5ci7aqV2GkFs3hstXg1nM3OMw9ytJkjiiFGRfi3m0E1+oxK8Iprl6
	f135RMNRCcr+0b/kmSGxLBDx6lI0aGuLB1tobWof/NRlhniBoCqmhXdFQL1OeEXa159Ye+bdBlQYW
	Y3M9kDqaVH20/DH6Q2hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lvA-0003CT-OB; Mon, 16 Sep 2019 07:59:40 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lv0-0003Br-EZ
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 07:59:31 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3E90D68B05; Mon, 16 Sep 2019 09:59:26 +0200 (CEST)
Date: Mon, 16 Sep 2019 09:59:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 2/2] block: centralize PI remapping logic to the block
 layer
Message-ID: <20190916075925.GB25796@lst.de>
References: <1568493253-18142-1-git-send-email-maxg@mellanox.com>
 <1568493253-18142-2-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568493253-18142-2-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_005930_644041_86FF1D14 
X-CRM114-Status: UNSURE (   5.66  )
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
Cc: axboe@kernel.dk, keith.busch@intel.com, sagi@grimberg.me,
 martin.petersen@oracle.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 shlomin@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
