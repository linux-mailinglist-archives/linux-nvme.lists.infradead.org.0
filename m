Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83191BC87
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 20:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqyudhr0oikwXTuT7eViTqpZNs57/gE0OQc4HAfmIm0=; b=E/fBCFGFLEgZdt
	2s2Q+YyhSDwN7Avccj3/Hrf/eKG/lGAS4Y+9EhEt4yxnKPelelWlTNwDr/BagVUaGaQL3Kfavd1Hf
	fh8zM9ISYTdwMN4uG4m2PJdPzdrbqSQDHbNO+Bj/yGGGq1aJTZf8RNVVyxxpIZtj1e3Kp4IsPsyy6
	PXhiDBUb0GwXnP1dX8dBvcnLeIzcWpJRqE36AtGL5/siHMivvj8ilmW111bvB0mdWk1BAgOTVWmdx
	PTEL6csY87wshx+TVAKcMNKKcpRPZEKoQsLrrm4fbQcPZpYJliqLuYztpWDiTRTOiriGX/bAQ3wVT
	cGy2D+XEv0G1Cf1wefrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQFGo-0003ez-Ve; Mon, 13 May 2019 18:01:50 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFGj-0003e8-9z
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 18:01:47 +0000
Received: from pps.filterd (m0170398.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DHxfTB014439
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 14:01:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=7RQwiZOU3P8AwjFWtnYhWR2+zaHJysmliJcO7wy13CY=;
 b=r+teCQ/g7haRS7P0Yv5+MKvoTeZ+p3BR12R9BX+7nXGrAHYDAZ2NxYvLKf/vK/12uY/9
 Xl6Y8y3lMuMdkTOluMSz753mDRG9/IxDEPlMB6LegYPWdMQUCbJmCxHHzetnpw+OC8Fc
 1UsiFt1YnS5F3owHEenLoY3KiLprfcS428dyfeVKFImm1FDrTGRyWNgQ/n+XvN0fYZMi
 ze9kbv0C+XAWanAqOa7d2xLKJdyFPkxUywUkO6VWYgpX7ed7VaswHI06O+1RPeZAQ8rE
 PJtYAiuNzcFpD+sdhdgdFZx222vUSiqlEYJ0IB3KbCWsk77D2Q+0dS5l96TSUWL8VjVG iQ== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2sdsm85s3g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 14:01:42 -0400
Received: from pps.filterd (m0144103.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DHwZhB100937
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 14:01:42 -0400
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
 [143.166.148.206])
 by mx0b-00154901.pphosted.com with ESMTP id 2sfc7ps3bv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 14:01:42 -0400
X-LoopCount0: from 10.166.132.134
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="1293478792"
From: <Mario.Limonciello@dell.com>
To: <hch@lst.de>
Subject: RE: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Topic: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Index: AQHVB3g9crBQ5iluoUuygL0xp1WIm6ZlFnpAgAQIfyCAAFjOAP//rwFAgABWXgD//93q8A==
Date: Mon, 13 May 2019 18:01:39 +0000
Message-ID: <df020e90e8b54244b37910a2a7965671@AUSX13MPC105.AMER.DELL.COM>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143754.GE15318@localhost.localdomain>
 <7ab8274ef1ce46fcae54a50abc76ae4a@AUSX13MPC105.AMER.DELL.COM>
 <20190513145708.GA25897@lst.de>
In-Reply-To: <20190513145708.GA25897@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=860 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905130123
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=958 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_110145_518014_F29C460A 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sagi@grimberg.me, rafael@kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, kbusch@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Christoph Hellwig <hch@lst.de>
> Sent: Monday, May 13, 2019 9:57 AM
> To: Limonciello, Mario
> Cc: kbusch@kernel.org; keith.busch@intel.com; hch@lst.de; sagi@grimberg.me;
> linux-nvme@lists.infradead.org; rafael@kernel.org; linux-kernel@vger.kernel.org;
> linux-pm@vger.kernel.org; kai.heng.feng@canonical.com
> Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
> 
> 
> [EXTERNAL EMAIL]
> 
> On Mon, May 13, 2019 at 02:54:49PM +0000, Mario.Limonciello@dell.com wrote:
> > The Intel DMA controller suspend callbacks in drivers/dma/idma64.c look to me
> to
> > turn off the controller.
> 
> How is that relevant?  That thing is neither a NVMe controller, nor
> even an PCIe device..

When using HMB the SSD will be writing to some memory mapped region.  Writing to
that region would use DMA to access host memory, no?
If the DMA controller is not functional writing to that region won't work properly as 
it can't access that memory.

> 
> > And NVME spec made it sound to me that while in a low power state it shouldn't
> > be available if the memory isn't available.
> >
> > NVME spec in 8.9:
> >
> > "Host software should request that the controller release the
> > assigned ranges prior to a shutdown event, a Runtime D3 event, or any other
> event
> > that requires host software to reclaim the assigned ranges."
> 
> The last part of the quoted text is the key - if the assigned range
> is reclaimed, that is the memory is going to be used for something else,
> we need to release the ranges.  But we do not release the ranges,
> as we want to keep the memory in use so that we can quickly use it
> again.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
