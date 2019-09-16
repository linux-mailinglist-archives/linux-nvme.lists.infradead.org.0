Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51104B3F8F
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 19:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlQt8se2Vx/8GLqZlzWIEG2ARBESIUle7CEZH89ffO0=; b=OrQc2bA8L/yFC5
	b/nxoPjUKsXDiOsMykbg5e79k9kWnrOzt7x78nRTlAvdhTmAO7bWOcW6QMl2wFK/czGxk1mmt5g2z
	OVxAUxVzOYYRD1tK3xhL6Xok1pGJYUYPk6NPXsMAvYCDK/ss0+xuH1mb2KK6mYH7ogxb1HLkdB1Dg
	QeC8sqFenhD0OWXl1FSHb3zzVx1ofYsKYAyl/bKgYMx1sKqZZZNmiF+VVRfmYH5eKVIL5qe5EGY+g
	CTXKbZrwnMVbT+/eyPiMUt1i1IMQ3jy+x6fqRnrLMpJp3CL6UpmNOwnR2KxRQpHsQP8I4V3ATMaV4
	kQpZ/N6/qcRon80y9AFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9uhd-0005Rt-2Y; Mon, 16 Sep 2019 17:22:17 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9uhR-0004PO-KF
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 17:22:10 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8GHJ1v8030790;
 Mon, 16 Sep 2019 17:19:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=cv+DwWu9qoA7iqv3H2CpGW617J3RoXHp/vizYrY+tpY=;
 b=ZrCMRNMBnZlDrtqwP8+dWglJrV2cGcPJexJJOkZWUlOaXHwOmKWyhKw1v79KTFHsHQ4t
 tRVXhGRos4gX2mYvfqLgWKO69LEq7POoj/KBvsUozw6QIb6QVczGByQALTVGRfw3/rha
 5/p3LEu9DDdm+xgb3qLe/tJYhSg0jER2apZMeGhZV2PoSTJcNu2DyA2mPwM99gaEt30b
 Lxu3sC2GzLh7h+pyG0ZbPtDpH5YV/3rkRky0wmMfwd7cPe6C28EKm6dQzQ0zmODPakJd
 RXiH+E6yQhjsE6mqvghJeXymtVoZE7Gg+Re5EX9L0rJ3Eq8hJuLRURKboZXZRsfSuhfG fw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2v2bx2s5nd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Sep 2019 17:19:55 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8GHIngj084270;
 Mon, 16 Sep 2019 17:19:54 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2v0p8uwmbn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 16 Sep 2019 17:19:54 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8GHJsEq014272;
 Mon, 16 Sep 2019 17:19:54 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 16 Sep 2019 10:19:53 -0700
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v4 1/3] block: centralize PI remapping logic to the block
 layer
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1567956405-5585-1-git-send-email-maxg@mellanox.com>
 <yq1mufei4zk.fsf@oracle.com>
 <d6cfe6e5-508a-f01c-267d-c8009fafc571@mellanox.com>
 <yq1d0g8hoj5.fsf@oracle.com>
 <61ab22ba-6f2d-3dbd-3991-693426db1133@mellanox.com>
 <yq1k1affx8v.fsf@oracle.com>
 <e59b2d78-4cf6-971a-1926-7969140d2a01@mellanox.com>
 <yq1lfurdejc.fsf@oracle.com> <20190916080328.GB25898@lst.de>
Date: Mon, 16 Sep 2019 13:19:51 -0400
In-Reply-To: <20190916080328.GB25898@lst.de> (Christoph Hellwig's message of
 "Mon, 16 Sep 2019 10:03:28 +0200")
Message-ID: <yq17e68b1l4.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9382
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=795
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909160171
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9382
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=870 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909160172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_102205_756953_DA77CB93 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, sagi@grimberg.me,
 "Martin K. Petersen" <martin.petersen@oracle.com>, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, keith.busch@intel.com, shlomin@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Christoph,

> Do we actually have Linux users of Type 3 at all?  I think for NVMe
> we could just trivially disable Linux support, and I suspect for SCSI
> as well, but I'll have to defer to you on that.

There were several companies looking into building Linux things using
Type 3 SCSI devices. No idea whether this happened. I definitely still
get lots of mail from people using Type 2. Something which also really
shouldn't exist outside of a disk array.

For NVMe, I assume nobody has tried Type 3 given the discrepancy between
how SCSI works and how the NVMe spec is currently written.

In any case. Since Type 3 is a pretty trivial subset of Type 1, I don't
see much benefit in actively removing it. One could argue we could
reduce the plumbing by removing a level of indirection. However, we'll
need the infrastructure to support the impending Type 4 as well. So my
preference is to just leave things as-is for now.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
