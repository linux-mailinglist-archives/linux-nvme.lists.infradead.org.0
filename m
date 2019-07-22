Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C7170D52
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 01:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyxehpsIqxVa3JbX3Cna3Bu3rles+65EAytH5nHGr9Y=; b=s6dWOlZsxsNssU
	BbaytDOonnkLbqBe+/2pD3sMmOIDbr7UAHm6wY4ZZBNcagNkIddxt9XsmIjCm6HKGTJO8vTmWmA/B
	hxb7b5Ng7JdAGWOiIQyIKyVpPbHEfK/KIiOp3HAIhLtFKL7p0IFnMdehh+fBpOo4pBSdSGTl1sPPC
	gdLvf5tXEFrUj4l+yJnzc/j4vd/ZCe3/AiY8JfA/0MMywOA0DR/o5tBk/leQb0EIJo4Ipx6ti1fjK
	St+O1KfOUl6+GvfQVzBWIOrzsJQue6L8TSKFvO2Gc/Q8EdJQbicPFFb/P97weTLJOT4rFg1df8Tih
	G1c+av5i1emuiksPLM2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphiS-0001up-Sc; Mon, 22 Jul 2019 23:27:37 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hphiD-0001sx-Vp
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 23:27:23 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6MNO7kL100304;
 Mon, 22 Jul 2019 23:27:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=nH/h94l6KgprwBxgjWXlmx9Jit7OQZwgCgUjL3XIoKI=;
 b=Q8PU/3WgHzA4QDiw2OVdtRQqVZOzQxJC6Ax+LGUKvbzRtF14Rquj5Ocozrad8OF3hamK
 zCg3YEg1UI2/gka4cbX8e6FyyqvlbzdUk7xojklQ5nY6wPEjtHugzh8sy6oeka9EqYgF
 7RdxMqglocgxbNRT6jhoewCKBAm2KMVNEN1GiVvdpAYtICl5CAktMBuwulYYzAPmSocg
 ooVQz7G378+JGMNRG3iubrLp/UahLuy3iHUu402LbTQHqrt3KHG9g+wJDcOH5hOJGNHg
 y2Ep2ns9CQ2UD7wcMlJWtrM07IyZP66Ck1H7yp767UkoHdtFPyqJ985TZm/oPgJzVyjw 2g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2tutctadt8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jul 2019 23:27:08 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6MNNtNG196056;
 Mon, 22 Jul 2019 23:27:08 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2tuts3avxu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jul 2019 23:27:08 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6MNR7px024371;
 Mon, 22 Jul 2019 23:27:07 GMT
Received: from [192.168.1.14] (/180.165.87.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 22 Jul 2019 16:27:06 -0700
Subject: Re: [PATCH 0/5] blk-mq: wait until completed req's complete fn is run
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190722053954.25423-1-ming.lei@redhat.com>
From: Bob Liu <bob.liu@oracle.com>
Message-ID: <a22e7266-98cb-875d-aa89-f37dd6c34ad5@oracle.com>
Date: Tue, 23 Jul 2019 07:27:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-1-ming.lei@redhat.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9326
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907220247
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9326
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907220247
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_162722_196267_A05EFD7D 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/22/19 1:39 PM, Ming Lei wrote:
> Hi,
> 
> blk-mq may schedule to call queue's complete function on remote CPU via
> IPI, but never provide any way to synchronize the request's complete
> fn.
> 
> In some driver's EH(such as NVMe), hardware queue's resource may be freed &
> re-allocated. If the completed request's complete fn is run finally after the
> hardware queue's resource is released, kernel crash will be triggered.
> 

Have you seen the crash? Anyway to emulate/verify this bug..

> Fixes this issue by waitting until completed req's complete fn is run.
> 
> Thanks,
> Ming
> 
> Ming Lei (5):
>   blk-mq: introduce blk_mq_request_completed()
>   blk-mq: introduce blk_mq_tagset_wait_completed_request()
>   nvme: don't abort completed request in nvme_cancel_request
>   nvme: wait until all completed request's complete fn is called
>   blk-mq: remove blk_mq_complete_request_sync
> 
>  block/blk-mq-tag.c         | 32 ++++++++++++++++++++++++++++++++
>  block/blk-mq.c             | 13 ++++++-------
>  drivers/nvme/host/core.c   |  6 +++++-
>  drivers/nvme/host/pci.c    |  2 ++
>  drivers/nvme/host/rdma.c   |  8 ++++++--
>  drivers/nvme/host/tcp.c    |  8 ++++++--
>  drivers/nvme/target/loop.c |  2 ++
>  include/linux/blk-mq.h     |  3 ++-
>  8 files changed, 61 insertions(+), 13 deletions(-)
> 
> Cc: Max Gurtovoy <maxg@mellanox.com>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Christoph Hellwig <hch@lst.de>
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
