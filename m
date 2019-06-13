Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339A54321E
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 03:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Y95lMakhdfQTvZ62xrtCGfGklfxIHOgNQG0JOx9tP8=; b=ti2ZtSyMAJJpRG
	iMxpFhQiwh265HNTZe9c2YBGHt9DovGdsYYJsQrj5Au5Ikhd93ItMCxUuyrcEhP2CU4fjh24FvjzL
	G+SOSCQR3vralOjLzl6Ajpev/vOF127BLYR0ZUVUVRfQVz5JcFJytuKKh5r2S8PRd7+cJ4zq1ouub
	TxaaqGm/TRitseEhEqwErt6cE8QZpxlfMPQgksx9YJZK9P1mBisiWhmeeuBuIkHQenLhQIHKGP1uN
	U+YHlDpUok+ILD2uypFaD/LpyiibkWEa4l96IbL/0Bu9HJ7gKlGD9m1e7+cww5+aVZRmpf7OtTM/r
	/bjmNKvwYx+QXy9hLGkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbEwM-0001z3-15; Thu, 13 Jun 2019 01:54:10 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbEw9-0001yW-A3
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 01:53:58 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D1hOOO011978;
 Thu, 13 Jun 2019 01:53:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=KEmDoCz3dWCEeotxXoSp2kP1arF3OgFwA4amQUIPNOs=;
 b=pTsVEElrx/TDogtSJ0WHsa6WBFikd81O2jkMmkrKYF1vlx977yyI4ip+7FTTzZmIv+EC
 4p0tnv53SQNmLrsCqMVtos/z+D9/QdpWtbE8RLRjcebstIkJSE/9eTK2ysL1bw9SAWOH
 ogdqXAqTYEnu1OnnvfefMZ/jf4BiqJg+pZnnLaHEbLPIaE6KGF0crFZaZ+rCkRs7cLdp
 +yY7FkfLOXAz3Sr2To1zgxalz5SMcMNvIdZb8/SszFBKLWLvBp3l/zWIr+lH6aH92O3V
 mcQLVmuE7SCfPf9CQCvp32Aqu4G99RB9D+4Rq+tfKDs9pnBI/A7cYJZjIZPC0vfRSHOy ig== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 2t02hexupm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 01:53:44 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D1rhVV074912;
 Thu, 13 Jun 2019 01:53:43 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2t024v949g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 01:53:43 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5D1reim013505;
 Thu, 13 Jun 2019 01:53:42 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Jun 2019 18:53:40 -0700
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH v2 3/3] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-4-bvanassche@acm.org>
Date: Wed, 12 Jun 2019 21:53:29 -0400
In-Reply-To: <20190610210612.103952-4-bvanassche@acm.org> (Bart Van Assche's
 message of "Mon, 10 Jun 2019 14:06:12 -0700")
Message-ID: <yq15zpa2que.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=542
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906130013
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=584 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906130012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_185357_445454_6F9AB1A4 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Bart,

> +	nawupf = (1 + ns->ctrl->subsys->awupf) * bs;
> +	if (id->nsfeat & (1 << 1))
> +		nawupf = (1 + id->nawupf) * bs;

This tripped me up a bit. I would have preferred an else statement and
maybe a clarifying comment to make it obvious whether the value comes
from the controller or the namespace.

Also, unlike awupf, nawupf is not a 0-based value (0 means "use awupf"
and not 1 logical block).

And finally, I think it's confusing that you use nawupf for the variable
name post modification. In terms of naming, I think you'd be better off
to do s/nawupf/phys_bs/ or atomic_bs. And then rename your existing
phys_bs variable to io_min to match the existing block layer usage.

So something like:

        /* Use reported namespace write atomicity */
	if (id->nsfeat & (1 << 1) && id->nawupf != 0)
           phys_bs = id->nawupf * bs;
        else /* Fall back to reported controller write atomicity */
           phys_bs = (1 + ns->ctrl->subsys->awupf) * bs;

[...]

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
