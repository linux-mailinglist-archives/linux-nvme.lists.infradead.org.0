Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FEF133956
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Jan 2020 04:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/TI0pPJLo9Jtn4qTxJizrZImezZXNRW1pSX9LUvpZ8=; b=Fr8Il9skyxJgZq
	JZ7XskLc/j8q2Q/G00JMpKMwJXCHNUj9m7GmyVY0oi2itsTJne8xxRbawd5wkgnCB8QrJSCkDysL2
	gUHaauzYtq35psxAUF6lwPaeAEJjSbcD09/vbGmUfbM6p6tG1Y7LFIRszr5y7rn3zK9B7S4okD1Yx
	C1vZpBjaaHclrGAgzg/i9g2Wt8eCmkrFLeomru36SrrhYt2MI+jO2WJaEPCzZB1K38GSP8jESMpJu
	2IJ9SI/ivJVCNLChS5GH2Xkk+NBP5DpuFqn6ELQ2b7FQfBCNIIdxwZmyimywmuQGhlEa7fOpAL3mB
	RF20KJpaYC34GXcxW/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1a3-0005o2-GL; Wed, 08 Jan 2020 03:00:23 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1Zy-0005n6-RK
 for linux-nvme@lists.infradead.org; Wed, 08 Jan 2020 03:00:20 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0082xHKT168312;
 Wed, 8 Jan 2020 03:00:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=iLcFPVcqitIXvWo+HRVRWkQ4v6leUp47ykxd+ax2Jj0=;
 b=OjmOVJRU/nmW3pgl8b5slYJ/Hu0cbI4Yrgr5zTbQMY0I0rMWBHXsTSH+0cdhrYuqraPw
 E3xGpH4eQD+3Qh/KjVSA/fX1ZL+5L/T5MGOWIkpmENcHS/+LBUz6XgAP+kL90yRte3kL
 ZA7/oQ9EcKLwgTx1QXxpuHqeTk2Jkm9rtNeBg4YBrvP6mOJn/R9/W2g276/O70pe9RAK
 jKh/outQJAFAIk0yn8kwk9cLDAKxLjSB/D3sVSsED+Fs89CMZgu9Y3dSpm6xNv68i2iz
 ZfJuJkrSWJKeYXf+vEqhuGHvZ20Ke5Y4EnnlUBROdH+kWqy57e0l14F8YaamhqnyVHuv Cw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2xajnq17bh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Jan 2020 03:00:10 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0082wO3v188385;
 Wed, 8 Jan 2020 03:00:09 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2xcpanv9wr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Jan 2020 03:00:09 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 008301Dn024609;
 Wed, 8 Jan 2020 03:00:01 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 07 Jan 2020 19:00:01 -0800
To: "Ewan D. Milne" <emilne@redhat.com>
Subject: Re: [resend v1 5/5] drivers/scsi/sd.c: Convert to use
 disk_set_capacity
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-6-sblbir@amazon.com>
 <yq1blrg2agh.fsf@oracle.com> <1578369479.3251.31.camel@linux.ibm.com>
 <yq1y2uj283m.fsf@oracle.com>
 <1eb9d796f81fffbb0bfe90bff8460bcda34cb04d.camel@redhat.com>
Date: Tue, 07 Jan 2020 21:59:58 -0500
In-Reply-To: <1eb9d796f81fffbb0bfe90bff8460bcda34cb04d.camel@redhat.com> (Ewan
 D. Milne's message of "Tue, 07 Jan 2020 16:37:43 -0500")
Message-ID: <yq1ftgq1wlt.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9493
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=920
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001080024
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9493
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=981 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001080024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_190018_972925_07AF72F8 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@kernel.dk, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Chaitanya.Kulkarni@wdc.com, mst@redhat.com,
 James Bottomley <jejb@linux.ibm.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 ssomesh@amazon.com, Balbir Singh <sblbir@amazon.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Ewan,

> Yes, there are some storage arrays that refuse a READ CAPACITY
> command in certain ALUA states so you can't get the new capacity
> anyway.

Yep. And some devices will temporarily return a capacity of
0xFFFFFFFF... If we were to trigger a filesystem resize, the results
would be disastrous.

> It might be nice to improve this, though, there are some cases now
> where we set the capacity to zero when we revalidate and can't get the
> value.

If you have a test case, let's fix it.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
