Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EAB86B18
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u0DtJtCSEH0j1/F7shb1uaOXHJOvLVDl7Xv21nurhc=; b=m9rRhAR99TS+Sy
	hA1TuGJuhhzJGuiiL6qsbEsXd2IeyQsSPiiGAxGaXcnY7sU6GWWU98QfkG4ouSGCV+K+SaSdbfH0h
	Q5LdhdBYdlOpoqegRXj0dFTAawtM8pIM/bwJNoO8QxXhYp0EnMxfRl2TPNSn/O6xGpscB0UKBprDa
	yXoRs13L2b6BmtY5M34dGVTSExGG61h/r/Keu3w7bkQY/ZBcuFSLC5WNAsMx6gdYEZkqC9CF/1dlb
	HUKVX+SMmNO5qalDz2VABgF4aJCrmXyOKqsov3WXgZFAa29/LBdPxAGB3Vp9qTNRPJhOeWpzzBNU+
	/kYnukoWlRQzYiCNpdgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvog0-000246-LP; Thu, 08 Aug 2019 20:06:20 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvofu-00023E-P1
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 20:06:16 +0000
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x78JswOE010405
 for <linux-nvme@lists.infradead.org>; Thu, 8 Aug 2019 16:06:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=spsW3iJj1C+z5+hobnJKI3JF6/CSZLZhsxP1rFK06xI=;
 b=Rq2ekKxw0YDYt1yk99p2KNKEQVqEbzNWb8vDtd6+ZUlk/Im71MAXiuc3oHmiLLFf3+Jy
 8NtlzD8iI03JsZ1Y+t5Oq7bI9DOYFdSikBrLry+sJ94Kl9bNWkjATEmE4mW00X6yJbog
 i6rBs8cPIKHw5zcWI95B33Juh3pJfFDrEoMEYxyrquQvLGUoJGJMKiNw5xG+k0d1cJc1
 3+ZUxNKfpn6hEszW4+rFx8XXKcWoL8lxdWGsetuVeUy9nOWu65CsIaAFQNLTbMJsi7ce
 5gEcxylft/2Z15fgcZIUJOspVF+PDiXyYm/hvbVRzv3dDqGgyN7Ff9A1ryP9VLigL+No oA== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2u83vcnqhd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:06:12 -0400
Received: from pps.filterd (m0142699.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x78JrDFD060153
 for <linux-nvme@lists.infradead.org>; Thu, 8 Aug 2019 16:06:11 -0400
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0a-00154901.pphosted.com with ESMTP id 2u8rtqhv37-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:06:11 -0400
X-LoopCount0: from 10.166.132.131
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="841637776"
From: <Mario.Limonciello@dell.com>
To: <helgaas@kernel.org>, <rafael@kernel.org>
Subject: RE: [PATCH v2 2/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
Thread-Topic: [PATCH v2 2/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
Thread-Index: AQHVTdGT69rR0fb3wUCKiH74wnB2qabxltQAgAAR1ICAAEDdAP//rTHA
Date: Thu, 8 Aug 2019 20:05:48 +0000
Message-ID: <707af7109fee4942a4ba8eebbee6cde8@AUSX13MPC105.AMER.DELL.COM>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain> <1921165.pTveHRX1Co@kreacher>
 <1870928.r7tBYyfqdz@kreacher> <20190808134356.GF151852@google.com>
 <CAJZ5v0h=nz8yXwOOGBUB9m1GtJPOqBwtNK7zXPNMJjzPhMWd9w@mail.gmail.com>
 <20190808183954.GG151852@google.com>
In-Reply-To: <20190808183954.GG151852@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-08-08T20:05:47.1803865Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-08_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908080177
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908080177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_130614_985766_97250E73 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, linux-pci@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 kai.heng.feng@canonical.com, kbusch@kernel.org, rajatja@google.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> This is more meaningful to you than to most people because "applying
> the standard PCI PM" doesn't tell us what that means in terms of the
> device.  Presumably it has something to do with a D-state transition?
> I *assume* a suspend might involve the D0 -> D3hot transition you
> mention below?
> 
> > The reason for doing that was a (reportedly) widespread failure to
> > take the PCIe link down during D0 -> D3hot transitions of NVMe
> > devices,
> 
> I don't know any of the details, but "failure to take the link down
> during D0 -> D3hot transitions" is phrased as though it might be a
> hardware erratum.  If this *is* related to an NVMe erratum, that would
> explain why you only need to patch the nvme driver, and it would be
> useful to mention that in the commit log, since otherwise it sounds
> like something that might be needed in other drivers, too.

NVME is special in this case that there is other logic being put in place
to set the drive's power state explicitly.

I would mention that also this alternate flow is quicker for s0ix
resume since NVME doesn't go through shutdown routine.

Unanimously the feedback from vendors was to avoid NVME shutdown
and to instead use SetFeatures to go into deepest power state instead
over S0ix.

> 
> According to PCIe r5.0 sec 5.3.2, the only legal link states for D3hot
> are L1, L2/L3 Ready.  So if you put a device in D3hot and its link
> stays in L0, that sounds like a defect.  Is that what happens?
> 
> Obviously I'm still confused.  I think it would help if you could
> describe the problem in terms of the specific PCIe states involved
> (D0, D3hot, L0, L1, L2, L3, etc) because then the spec would help
> explain what's happening.

Before that commit, the flow for NVME s0ix was:

* Delete IO SQ/CQ
* Shutdown NVME controller
* Save PCI registers
* Go into D3hot
* Read PMCSR

A functioning drive had the link at L1.2 and NVME power state at PS4
at this point.
Resuming looked like this:

* Restore PCI registers
* Enable NVME controller
* Configure NVME controller (IO queues, features, etc).

After that commit the flow for NVME s0ix is:

* Use NVME SetFeatures to put drive into low power mode (PS3 or PS4)
* Save PCI config register
* ASPM is used to bring link into L1.2

The resume flow is:

* Restore PCI registers

"Non-functioning" drives consumed too much power from the old flow.

The root cause varied from manufacturer to manufacturer.
The two I know off hand:

One instance is that when PM status register is read after the device in L1.2
from D3 it causes link to go to L0 and then stay there.

Another instance I heard drive isn't able to service D3hot request when NVME
was already shut down.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
