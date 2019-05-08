Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D407018113
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 22:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJhqIN4PW1AoCM+15j21VKbI+YGSwIF1BZNxppVu4U4=; b=eHtaIRnYSnM/Nb
	jtEk89aqQr7DLSLEiEr+y0ErgX/WH3sRSOjgqUAuVQS3CcM7YO/kUEszvGM219C7vW8/q7H6Ar5AQ
	+PdYzelIrEfseCR79K7SQQ254tY4oRmoRAMiQ8rjaf/SLo+d/9a36EEhTZfAQx+y+qTMtLUihFp1H
	VFCx1h34iH5UvlR7HXLUEIqpzypt9A3UZfw3UFkqmybE1x3HCQRY2Sr+ZGChHMYwjTrK5DEgD4VCw
	Q1vHD7PW3WtjeifGdh/kNV48GGe63FpmRanEfrIq7KXtLawvHb+FOQBXXMFPMXPyv3lPuEwl87aOk
	fo0R6pGMkWRlRLNPfgAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOTBB-0001Cd-D0; Wed, 08 May 2019 20:28:41 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOTB5-0001C4-TT
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 20:28:37 +0000
Received: from pps.filterd (m0170390.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x48KF3r0002986
 for <linux-nvme@lists.infradead.org>; Wed, 8 May 2019 16:28:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=NBQDuoaJ1XrW6ALy4NvQGygfurvfzPp5iKN3XvrAFHM=;
 b=tkB1ce0/PlIyySHQi8pc9xhgf6WspqE+kR1rWxurx0p7T1Q4dMEhooftbSuduiLnUIR5
 TFHtcL8u51Y8ZyCVAV+o0SQN3KUY4B++ioNpVX2g/iIRBP2IJP5gv9Z685WCe2LBZELY
 x758QDI96ABHk28dT+kJKnDH+OJH8veV6DhOnsWHk3TlPSceP+iXSG103imIkA6WNFQ2
 C8Rf7xgcCWfV9Zx9IoUyacPsVu8YNG9szHAjPqYyMw92bfTitKPidLmySwwudN/zLU4R
 JWi6+DbCs+6LhPtrvn6s8LSo6Qf9Co42/o/VXyjdUhrf/WLY6gIkT8TiIAj5RNH1ujmj GA== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 2sbx6dj7j4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 16:28:34 -0400
Received: from pps.filterd (m0134318.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x48KCb3H037347
 for <linux-nvme@lists.infradead.org>; Wed, 8 May 2019 16:28:33 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0a-00154901.pphosted.com with ESMTP id 2s95cdk7rm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 16:28:33 -0400
X-LoopCount0: from 10.166.132.128
X-IronPort-AV: E=Sophos;i="5.60,346,1549951200"; d="scan'208";a="1233298866"
From: <Mario.Limonciello@dell.com>
To: <hch@lst.de>
Subject: RE: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Thread-Topic: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Thread-Index: AQHVBdBS/xizqbOjGUOY5SKUREVH6KZh7T4AgAAD4gD//6zksIAAWSuA//+yBvA=
Date: Wed, 8 May 2019 20:28:30 +0000
Message-ID: <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
In-Reply-To: <20190508195159.GA1530@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=628 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905080124
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=715 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905080124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_132836_003513_1B3BFFFE 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.163.133.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: axboe@fb.com, sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 kai.heng.feng@canonical.com, kbusch@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Christoph Hellwig <hch@lst.de>
> Sent: Wednesday, May 8, 2019 2:52 PM
> To: Limonciello, Mario
> Cc: kai.heng.feng@canonical.com; kbusch@kernel.org; keith.busch@intel.com;
> axboe@fb.com; hch@lst.de; sagi@grimberg.me; linux-nvme@lists.infradead.org;
> linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3 on
> Suspend-to-Idle
> 
> 
> [EXTERNAL EMAIL]
> 
> On Wed, May 08, 2019 at 07:38:50PM +0000, Mario.Limonciello@dell.com wrote:
> > The existing routines have an implied assumption that firmware will come
> swinging
> > with a hammer to control the rails the SSD sits on.
> > With S2I everything needs to come from the driver side and it really is a
> > different paradigm.
> 
> And that is why is this patch is fundamentally broken.
> 
> When using the simple pm ops suspend the pm core expects the device
> to be powered off.  If fancy suspend doesn't want that we need to
> communicate what to do to the device in another way, as the whole
> thing is a platform decision.  There probabl is one (or five) methods
> in dev_pm_ops that do the right thing, but please coordinate this
> with the PM maintainers to make sure it does the right thing and
> doesn't for example break either hibernate where we really don't
> expect just a lower power state, or 

You might think this would be adding runtime_suspend/runtime_resume
callbacks, but those also get called actually at runtime which is not
the goal here.  At runtime, these types of disks should rely on APST which
should calculate the appropriate latencies around the different power states.

This code path is only applicable in the suspend to idle state, which /does/
call suspend/resume functions associated with dev_pm_ops.  There isn't
a dedicated function in there for use only in suspend to idle, which is
why pm_suspend_via_s2idle() needs to get called.

SIMPLE_DEV_PM_OPS normally sets the same function for suspend and
freeze (hibernate), so to avoid any changes to the hibernate case it seems
to me that there needs to be a new nvme_freeze() that calls into the existing
nvme_dev_disable for the freeze pm op and nvme_thaw() that calls into the
existing nvme_reset_ctrl for the thaw pm op.

> enterprise class NVMe devices
> that don't do APST and don't really do different power states at
> all in many cases.

Enterprise class NVMe devices that don't do APST - do they typically
have a non-zero value for ndev->ctrl.npss?

If not, they wouldn't enter this new codepath even if the server entered into S2I.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
