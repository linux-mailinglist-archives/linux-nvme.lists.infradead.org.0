Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C945B131EAE
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Jan 2020 05:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFPI9xQyrPzrauzBcLxzDxVm5rTBPAAKjRWZgDvve58=; b=PZ1gFD5J2+QK/d
	flqohOJ9hyiaH7vz3FixeZFdhOQtn/e/jXCj+hED8wFqmPH0UKOw+GF5X2xTmKQRupwH4TJRVCOyf
	LtU3dZtdmLi6r8f5av9i0EUcO7OycJQaZjn1UXoTGoI72e1PwVrmMuYXw1RczUX9+j2kgLLKWkIRB
	xqNOjbecvdkiYoa3StXQ9M5V5HQ9KrP9Hwn+cUJGaAADorMsU/QNqJFtGdgYkdrLuWCiOZfgofS0z
	dXJ5erT5rtyP4Ll82wbNhjFEvdgo2gb7GYUrnhW8TNe7vd4dh9/lpQHYJ2b0uif+pGDhCd9pU1HWY
	8LlqAvIREO4Qi0/pn5og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iogel-0004gy-MK; Tue, 07 Jan 2020 04:39:51 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iogeh-0004gF-6o
 for linux-nvme@lists.infradead.org; Tue, 07 Jan 2020 04:39:48 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0074dSia088622;
 Tue, 7 Jan 2020 04:39:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=Ut4HfjsleA5SVSMZ/IcSbSv3IYy2cHSpvO/X4+oPjeU=;
 b=EXF17GSlVh5i6vXJiSRt/n8Bu0aBoDDIf6+UwUKjkjbEbwVxR98Y/Mfo/tFNFG/NpEMa
 wtt9DuKSzEVCgw9uuAAoaxZIPpiELCgvaB7r4615rv95+tBOlD0Yz7DpH9980dugJjrG
 ZTWTTpfK15v+ykRTFqqbrPqaTQwCjCP6sU/QTVVZc2hbXIW471+/0cFQmQzxjrufZOWb
 UykUo/M5Tc83KNeiH9EH3diV5G0rOR6ds0oBikOq9NeNUsw6X+u+oLxBX2Utzhcys3uD
 R2twC+4j8SEbMz5pqa/nnN9WaJjNe9WMTSZIjJA0gVnR/x5bmCarGCcFR955oyuR0Hqr 3g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2xakbqjvx4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Jan 2020 04:39:30 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0074YEpR115118;
 Tue, 7 Jan 2020 04:39:30 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2xcjvc8p7m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Jan 2020 04:39:29 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0074dSCw020340;
 Tue, 7 Jan 2020 04:39:28 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 Jan 2020 20:39:27 -0800
To: James Bottomley <jejb@linux.ibm.com>
Subject: Re: [resend v1 5/5] drivers/scsi/sd.c: Convert to use
 disk_set_capacity
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-6-sblbir@amazon.com>
 <yq1blrg2agh.fsf@oracle.com> <1578369479.3251.31.camel@linux.ibm.com>
Date: Mon, 06 Jan 2020 23:39:25 -0500
In-Reply-To: <1578369479.3251.31.camel@linux.ibm.com> (James Bottomley's
 message of "Mon, 06 Jan 2020 19:57:59 -0800")
Message-ID: <yq1y2uj283m.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9492
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=875
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001070036
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9492
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=939 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001070037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_203947_380829_790B6A86 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@kernel.dk, Chaitanya.Kulkarni@wdc.com,
 "Martin K. Petersen" <martin.petersen@oracle.com>, mst@redhat.com,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, ssomesh@amazon.com,
 Balbir Singh <sblbir@amazon.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


James,

>> We already emit an SDEV_EVT_CAPACITY_CHANGE_REPORTED event if device
>> capacity changes. However, this event does not automatically cause
>> revalidation.
>
> Which I seem to remember was a deliberate choice: some change
> capacities occur because the path goes passive and default values get
> installed.

Yep, it's very tricky territory.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
