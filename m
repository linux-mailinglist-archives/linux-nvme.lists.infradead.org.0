Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4355A7AF6D
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 19:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLUff/DwhHyJMa1xd03ginXSNCWczUZD5RVE7OuV0C8=; b=CjUyNMf0HhB9ti
	cytiCrEXc5j5QV1LBfwxumVjQWdBVtS9hvbN3k+PF9unyYDImwnjJ9gpHkTRg+WubUm6H8+zr1vIH
	hCj04gHugHZcTZzw8MKlt5Mmw0fN8AoRg9YannV22+eUAEPNBNqLNQRn23TzQ1T7RZ94gtHOYKKh/
	yt6qt5wpj7T8QXB4u7mOfb9hxAoecdY+UvgOMLfDVSt/p/AaWJmsg9YiSGbLws4IRR+m3fT3J1ojB
	QBAyAPKDURd8ByOEx+lj7LbjJv5ugy4wOnwesj+zI8AOjN5PVGMh+Wf5rBm6ToXR55JxgxMqpAncy
	obZlTdClhNQYQkjbuw7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsViX-00007E-Oh; Tue, 30 Jul 2019 17:15:18 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsViG-0008Cz-41
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 17:15:01 +0000
Received: from pps.filterd (m0170396.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6UHAkmv031664
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 13:14:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=RMjHjkmRIljGcoRTDzfV1VDswcuS2fCCA1qfE4N+knk=;
 b=KRkclfMsm5RZ4Xf7ND4oKHRp4qrA8ObE2/3POnXYmm6q59Z8+94H4+0xhXlAurv7R5YV
 gF1mocfTw7BiBg4JxqsET3EhhJKnCpkJH5/1mx3yABm2AJgGFKKu97QutpjsiWxyN1ZF
 JhJT6DiF40m9ZqWsklPvNS95+tEXI3xtzGh8h2Zleg2rw8UtnSarfmwjzSY0GnAAMUGZ
 hz0KwkMNwTxgxDzstsTdoo+qmSB+8wvCWLyPu6s5IavcoJ8VQlx4IB6REnf+aJV7oylu
 fr/lxadUXv5DjhCeb2v64ZA0f0yiqkxkXFDIdCCywO0d5qZlRbgYHoLzwIOjrSpoeQzS RQ== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2u2kxtsvwb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 13:14:57 -0400
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6UHEeQ9060860
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 13:14:57 -0400
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
 [143.166.85.206])
 by mx0b-00154901.pphosted.com with ESMTP id 2u2sx1r77f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 13:14:56 -0400
X-LoopCount0: from 10.166.132.127
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="1447641413"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>, <rjw@rjwysocki.net>
Subject: RE: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Topic: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Index: AQHVQs6UiIesxZzK0UKkUWrQRuKoE6bbsW+A///PBcCAAGObgIAHcfaAgABB9YD//9WSkA==
Date: Tue, 30 Jul 2019 17:14:54 +0000
Message-ID: <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
References: <2332799.izEFUvJP67@kreacher>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
In-Reply-To: <20190730144134.GA12844@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-07-30T17:14:52.5849194Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-30_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907300180
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907300179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101500_331810_51A834B3 
X-CRM114-Status: GOOD (  29.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 kai.heng.feng@canonical.com, rajatja@google.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Keith Busch <kbusch@kernel.org>
> Sent: Tuesday, July 30, 2019 9:42 AM
> To: Rafael J. Wysocki
> Cc: Busch, Keith; Limonciello, Mario; Kai-Heng Feng; Christoph Hellwig; Sagi
> Grimberg; linux-nvme; Linux PM; Linux Kernel Mailing List; Rajat Jain
> Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
> suspend" has problems
> 
> 
> [EXTERNAL EMAIL]
> 
> On Tue, Jul 30, 2019 at 03:45:31AM -0700, Rafael J. Wysocki wrote:
> > So I can reproduce this problem with plain 5.3-rc1 and the patch below fixes it.
> >
> > Also Mario reports that the same patch needs to be applied for his 9380 to
> reach
> > SLP_S0 after some additional changes under testing/review now, so here it
> goes.
> >
> > [The changes mentioned above are in the pm-s2idle-testing branch in the
> >  linux-pm.git tree at kernel.org.]
> >
> > ---
> > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > Subject: [PATCH] nvme-pci: Do not prevent PCI bus-level PM from being used
> >
> > One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
> > host managed power state for suspend") was adding a pci_save_state()
> > call to nvme_suspend() in order to prevent the PCI bus-level PM from
> > being applied to the suspended NVMe devices, but that causes the NVMe
> > drive (PC401 NVMe SK hynix 256GB) in my Dell XPS13 9380 to prevent
> > the SoC from reaching package idle states deeper than PC3, which is
> > way insufficient for system suspend.
> >
> > Fix this issue by removing the pci_save_state() call in question.
> 
> I'm okay with the patch if we can get confirmation this doesn't break
> any previously tested devices. I recall we add the pci_save_state() in
> the first place specifically to prevent PCI D3 since that was reported
> to break some devices' low power settings. Kai-Heng or Mario, any input
> here?
> 

It's entirely possible that in fixing the shutdown/flush/send NVME power state command
that D3 will be OK now but it will take some time to double check across the variety of disks that
we tested before.

What's kernel policy in terms of adding a module parameter and removing it later?  My gut
reaction is I'd like to see that behind a module parameter and if we see that all the disks
are actually OK we can potentially rip it out in a future release.  Also gives us a knob for easier
wider testing outside of the 4 of us.

> 
> 
> > Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > ---
> >  drivers/nvme/host/pci.c |    8 +-------
> >  1 file changed, 1 insertion(+), 7 deletions(-)
> >
> > Index: linux-pm/drivers/nvme/host/pci.c
> >
> ==============================================================
> =====
> > --- linux-pm.orig/drivers/nvme/host/pci.c
> > +++ linux-pm/drivers/nvme/host/pci.c
> > @@ -2897,14 +2897,8 @@ static int nvme_suspend(struct device *d
> >  		nvme_dev_disable(ndev, true);
> >  		ctrl->npss = 0;
> >  		ret = 0;
> > -		goto unfreeze;
> >  	}
> > -	/*
> > -	 * A saved state prevents pci pm from generically controlling the
> > -	 * device's power. If we're using protocol specific settings, we don't
> > -	 * want pci interfering.
> > -	 */
> > -	pci_save_state(pdev);
> > +
> >  unfreeze:
> >  	nvme_unfreeze(ctrl);
> >  	return ret;

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
