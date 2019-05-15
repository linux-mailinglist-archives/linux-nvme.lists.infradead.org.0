Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3138E1FB35
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 21:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aur7fAdjgq6XeBY9voOrV5egTjWpDE5o0HhvPku3xe4=; b=MeNjRCU915Ur3z
	jGRUwfNKrhi0KlXrMuxOwCe6ovLA3LngLC6+TbV0j4eyiRNJ4+s4xE2kQDaWM/NhMfhtEzryrBNkK
	1cBzppKkDGphUCZr+tKONsrYCbNMGcz7jsg0LbVead28PNjm9/VYC5QosofTCiolf/E+nWtfCDZTA
	e8iYxArLHNA5XN7cSuyDR5ZC0nFeXzP2LYWMKSPqgPBly24XAOTbvzhxpgGrrfin+eAm6zdL3QsuN
	dSSNTPsOL9guJr/5QR8QDfFu3CF9x95PUvWBGGpwfVGfvPaEj01f+wm/Lj+TrVA797fofUw9jvvLa
	LeDJ3aMluT5mjTcdSJzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzoF-0008VF-Lq; Wed, 15 May 2019 19:43:27 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzoA-0008Uo-5Y
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 19:43:23 +0000
Received: from pps.filterd (m0170393.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4FJZE71020981
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 15:43:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=hiNC7wsZI8JDtaW4rvnGq8XVxekCgez/eE170i9sOvY=;
 b=mPs8cbapiKqOg1K3srRoxSQYUsEkMZFFNxFzG+oNZedjrzFLTQItIOIvTaFB4+zny0gD
 OKpntuxNXKjpqeK+4DscnmapXHC9LS7vSONf1KqjeZJ9u83hi6QYtVBMu42yUUur4YWW
 fph5JjFOIQjTIiTK9cJeHYG138kCa4wLw+CqcfG5wF2v1vDWfOwQrfxutYKnEJo2lFWw
 gayTgYR9muPz2OE4ysWDCUO+CKOWALp7iKMBgKvafz6SbsJdUeateex7/ngnAuJfgyxT
 WVvfBrZKlgI1ub+N0LHqQwOS6tj9vlfH8+l+W/g3nYi52X72FmrQULNDlW/1Hgf4TxZ9 jw== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2sg1fjmmb5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 15:43:20 -0400
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4FJeOtb055947
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 15:43:20 -0400
Received: from ausxipps306.us.dell.com (AUSXIPPS306.us.dell.com
 [143.166.148.156])
 by mx0a-00154901.pphosted.com with ESMTP id 2sgp9y2yrp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 15:43:20 -0400
X-LoopCount0: from 10.166.132.132
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="310815841"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>
Subject: RE: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Thread-Topic: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Thread-Index: AQHVCz0dhbbBUhQLLk2d9tGe3EmpNaZsks7QgABU5gD//63agA==
Date: Wed, 15 May 2019 19:43:16 +0000
Message-ID: <67e9643567c94a168c64e791ce41e9ec@AUSX13MPC105.AMER.DELL.COM>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <f3d7281f020844828161b2387732cc42@AUSX13MPC105.AMER.DELL.COM>
 <20190515193415.GA22079@localhost.localdomain>
In-Reply-To: <20190515193415.GA22079@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [143.166.24.60]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-15_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=767 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905150119
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=871 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905150119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_124322_318356_C91E7C86 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: sagi@grimberg.me, rafael@kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Keith Busch <kbusch@kernel.org>
> Sent: Wednesday, May 15, 2019 2:34 PM
> To: Limonciello, Mario
> Cc: keith.busch@intel.com; hch@lst.de; sagi@grimberg.me; linux-
> nvme@lists.infradead.org; rafael@kernel.org; kai.heng.feng@canonical.com
> Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for
> suspend
> 
> 
> [EXTERNAL EMAIL]
> 
> On Wed, May 15, 2019 at 07:33:45PM +0000, Mario.Limonciello@dell.com
> wrote:
> > > +static int nvme_deep_state(struct nvme_dev *dev) {
> > > +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> > > +	struct nvme_ctrl *ctrl = &dev->ctrl;
> > > +	int ret = -EBUSY;;
> >
> > Looks like a small typographical error with the double ;;
> 
> Good eye. I won't respin for that just yet. :)
> 
> Just fyi, I accidently didn't explicitly CC you on patches 1-5, and most of those
> are necessary for patch 6/6 to compile. They whole series is on the mailing list
> though.

Yes I noticed this, and at least one of those needs stuff in -next.
Do you feel this is going to be valuable to test on something earlier via backports
(such as 4.19 LTS), or do you want to see results directly on -next?

The series pretty much applies to 4.19 after backporting 2d4bcc16481ebc395b2d6220804a1ef2531e5ede

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
