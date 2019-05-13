Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19161B933
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 16:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7M7gnG5H2fUE+8F1qr8VEkWd3IdemEMh21anIHOlao=; b=SVx4c7HdgnaUzk
	/3iMMm9yvYXyLyg7NuoR/eANTDYI/IIOj4urXLySrZYocBdmQrheOzdWFwe/Sv9alysXBK/3AU0Dz
	Tb87+MQ13f23ipADVYWMkMn2hOkbf7kaacoWuensVYwa/c8BJQkNVQ/rdq5qW1XJihpvKYa0BRrzE
	jlYMpgsQUtjzUAEaATvR7TKia0Sc2Aqs9Ry2k7EFQpWtpwcEzlnAIjLsx1w91AGWq/kPO0KAYx8jY
	ggPCugg5MoQ3hzB/mY8HuawMH7bClMgxOhgCSxyL81XwIOgaTBEmKOBGKoS8d/7R7VRZKclXt8ql4
	n5ch7MzfHCjIw1q1nzyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCLy-0003lI-RM; Mon, 13 May 2019 14:54:58 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCLt-0003km-7C
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 14:54:54 +0000
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DEeSme004563
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:54:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=Yfx/+fCoaUN7e6wNIZpP9YbxyLOlbZPBQ9HySR+Tmbc=;
 b=WrE+WqT3olCy7fiiyrMtLtHf1iKaslR3p2a8UGdZwDH1HZLQ8TIlkMtsvByEp6XzzzfD
 yEN8uOoYJy8JPfx4JGDGhk6e9xh1NjBH4NcMZ/zWHR+goq+aivrxfF3RMaKz8mTPm/JY
 qf/xGo/nbeciFo+BLzmnAh8FAS7TJZ8+17ist4yFAlFkaE+O8I84I8gMvP2WJYXZxsKi
 qZsoMoMtkbd6G5deSlAlfysLfWlpRoAwE1fH8Ez9gdRKQ3pS9OnL4AGDGtOlop5nMDCW
 kxiBBl9MggpodT4XFXv/h79US6hvlnAiTrxPrlM6SyytyxzdoTE5aBTNvWe/KtC5KTRp hA== 
Received: from mx0a-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2sdry5d3pe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:54:52 -0400
Received: from pps.filterd (m0089484.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DElrWr142778
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:54:51 -0400
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0b-00154901.pphosted.com with ESMTP id 2sfann83fj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:54:51 -0400
X-LoopCount0: from 10.166.132.127
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="356506304"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>
Subject: RE: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Topic: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Index: AQHVB3g9crBQ5iluoUuygL0xp1WIm6ZlFnpAgAQIfyCAAFjOAP//rwFA
Date: Mon, 13 May 2019 14:54:49 +0000
Message-ID: <7ab8274ef1ce46fcae54a50abc76ae4a@AUSX13MPC105.AMER.DELL.COM>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143754.GE15318@localhost.localdomain>
In-Reply-To: <20190513143754.GE15318@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=949 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905130103
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_075453_424060_AD50C9C4 
X-CRM114-Status: GOOD (  16.84  )
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
 keith.busch@intel.com, kai.heng.feng@canonical.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Keith Busch <kbusch@kernel.org>
> Sent: Monday, May 13, 2019 9:38 AM
> To: Limonciello, Mario
> Cc: keith.busch@intel.com; hch@lst.de; sagi@grimberg.me; linux-
> nvme@lists.infradead.org; rafael@kernel.org; linux-kernel@vger.kernel.org; linux-
> pm@vger.kernel.org; kai.heng.feng@canonical.com
> Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
> 
> 
> [EXTERNAL EMAIL]
> 
> On Mon, May 13, 2019 at 02:24:41PM +0000, Mario.Limonciello@dell.com wrote:
> > This was not a disk with HMB, but with regard to the HMB I believe it needs to be
> > removed during s0ix so that there isn't any mistake that SSD thinks it can access
> HMB
> > memory in s0ix.
> 
> Is that really the case, though? Where may I find that DMA is not
> allowed in this state? I just want an authoritative reference to attach
> to the behavior.

The Intel DMA controller suspend callbacks in drivers/dma/idma64.c look to me to
turn off the controller.

And NVME spec made it sound to me that while in a low power state it shouldn't
be available if the memory isn't available.

NVME spec in 8.9:

"Host software should request that the controller release the
assigned ranges prior to a shutdown event, a Runtime D3 event, or any other event
that requires host software to reclaim the assigned ranges."

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
