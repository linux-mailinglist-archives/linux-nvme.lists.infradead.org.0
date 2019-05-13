Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AEE1B8CD
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 16:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5g3foWm7vhcOhV4GG61QlvxkmPtORkvwczf0pEPDV50=; b=F80MGU6tn6mUmL
	KFnmNVNeBCM7MOaSe5jPQ/oinEKj+Ta5upymx1gn1Ve9uwgp3eDkLBEXAouyJI06NYeIyCaiF50vo
	UyRfPMpPh8qB0Ta/vF7julO+P6/ehtYa2Q0RzITQolSlCFe4qA5Ukn6dmioIWbnT23hVmkNQgFOvO
	5ztS2bUqtRRjGiO9Y+DsWiRZo2in2XtyX9joQt0kd4mMzZCP1TNcEEP9PjYbwI9gpK7Wdt9zVWxrW
	uhaa6y2mlwdrw7faP/UtUpeUo+tG24yljWXkADlveyyrIKTkN72eLoDSm6A/AwOwKCclqCZW9UhzA
	mrD0oAOUkuXPk9Aft2Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCBE-0007Jl-ES; Mon, 13 May 2019 14:43:52 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCB9-0007JJ-B3
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 14:43:48 +0000
Received: from pps.filterd (m0170390.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DEeTpW030333
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:43:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=aImZ5J/Q/lhWgc1+GpSNxDkEPKzeyAmtinwTFVJFtQA=;
 b=lGtHMrTfFS94Yy/H4BjKhmjwkNzS9B3747GeyQ0+WmeU0LtpZT0H++KkBiTzSNJ5MRdY
 Vj1dBvpr5Uduopv0SFUW1pooTELJNO5651kdV6sKu4+wFiM8TJbilkCypJJnsBnxZ9hX
 cRbK/tu+3qeDwesX3ROcyWJxvmmzoW6MvfJhbdpNjhnwXopJFU9zt1Umn+aZ3oePugB+
 hzplAD0kJibeSjmQHN2jsHIGRZyJqcfsgmaqloQVarCwpxR2hrh80lRi9pRNsM8nHVAV
 E7t79OEpZVmkR35e4nqT5rZ2WwBM2CwqeCrdSZqDjX/MrMb7n99YykbdI6Mm+b7qbOgN GQ== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 2sdsf3vyrk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:43:46 -0400
Received: from pps.filterd (m0144102.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DEcA4v062596
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:43:45 -0400
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0b-00154901.pphosted.com with ESMTP id 2sf8wj1xse-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:43:45 -0400
X-LoopCount0: from 10.166.132.127
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="793587289"
From: <Mario.Limonciello@dell.com>
To: <hch@lst.de>
Subject: RE: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Topic: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Index: AQHVB3g9crBQ5iluoUuygL0xp1WIm6ZlFnpAgAQIfyCAAFi+gP//rRIQ
Date: Mon, 13 May 2019 14:43:43 +0000
Message-ID: <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143741.GA25500@lst.de>
In-Reply-To: <20190513143741.GA25500@lst.de>
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
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905130103
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_074347_427665_6F7A99A7 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, rafael@kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Christoph Hellwig <hch@lst.de>
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
> > I've received the result that from one of my partners this patch doesn't
> > work properly and the platform doesn't go into a lower power state.
> 
> Well, it sounds like your partners device does not work properly in this
> case.  There is nothing in the NVMe spec that says queues should be
> torn down for deep power states, and that whole idea seems rather
> counter productive to low-latency suspend/resume cycles.

Well I've got a thought, quoting the NVME spec:
"After a successful completion of a Set Features command for this feature, the controller shall be in the
Power State specified. If enabled, autonomous power state transitions continue to occur from the new state."

If APST is enabled on this disk, what is to stop an autonomous  reverse
transition from queue activity on the way down?

> 
> > This was not a disk with HMB, but with regard to the HMB I believe it
> > needs to be removed during s0ix so that there isn't any mistake that SSD
> > thinks it can access HMB memory in s0ix.
> 
> There is no mistake - the device is allowed to use the HMB from the
> point that we give it the memory range until the point where we either
> disable it, or shut the controller down.  If something else requires the
> device not to use the HMB after ->suspend is called we need to disable
> the HMB, and we better have a good reason for that and document it in
> the code.  Note that shutting down queues or having CPU memory barriers
> is not going to help with any of that.

So maybe the CPU memory barriers were probably just working around it in terms of
timing.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
