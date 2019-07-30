Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D3F7B4C0
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 23:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4S/p/I8Qokiid5WH9kJwZ2lQTHIcWP8A3fkJvNFb1jQ=; b=u62soL4p/FtkOP
	rRwEfiieSnZ2ePUCZSuYBulo31DI88c+wiyVbeZ/DzOb9DedPr5OnWzOemAlzcpoG3XUdRlIf3l9R
	Hx6rfop7r5/TjkmmJseW2bsjOwOtZhJdp2kXUDyBWobUkf13xxh8wT9/9aCJJatyB0jHh4I3ahLCd
	+Cf7vyRtn0dV1rdQWXdK3S1EVvxAosISzzEnwU+SihzGtZqlPOfxiIcZy9trICI6VJ6xgvRuCwd6F
	Frtuhta/f9Al7e8Mh0My3zd0jGLBMf82wfNYrQDf/FS4tEYRIOF5l2khH+fFVzYkOOHPvlmn374cM
	0OsvmmHdxVjroEP4I1iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZJM-0005P6-9h; Tue, 30 Jul 2019 21:05:32 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZJG-0005Om-DR
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 21:05:27 +0000
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6UKssEc032407
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 17:05:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=mwWo+EACOG18Ohy9y6ZEYKunhMDAqAMxvrodiiKSbOY=;
 b=h8bJEt1HVijtfaPqWakRlng5Q77rpVXvjD/t0Zkorqu3TajZnc0hc9dRu+Ffk5sXsnQL
 kfy3sGw/KqOsn6QQYGJEi7DRyqjh7FnsNabGFiFdxYJ4Bj4u/uMbJDxtpiELbxmzj6JK
 LiDN7ys2lRvayjYyxAp0nEwWnmnHOFHoAMbOnI6DMwCUzbLDUYRNSynM774FnuHQEeX9
 jARdb4/Ch2d5aWKHeaQcYW2A5GM6td3c1t6epKCEnYa/JaA3JMgd/4Odc6WFFoiYgHnK
 wdaMHWAfOXTBd/qYz+G8Mds68ASI1IpC8CMajOD2ApYUwkAFseY1+7z3fCXXpTug5uJB 6A== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2u2gv43kjw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 17:05:26 -0400
Received: from pps.filterd (m0133268.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6UKqkU1067448
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 17:05:25 -0400
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 2u141tm9pt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 17:05:25 -0400
X-LoopCount0: from 10.166.132.128
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="402442619"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>, <kai.heng.feng@canonical.com>
Subject: RE: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Topic: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Thread-Index: AQHVQs6UiIesxZzK0UKkUWrQRuKoE6bbsW+A///PBcCAAGObgIAHcfaAgABB9YD//9WSkIAAb9eAgAAIQgD//8kpUA==
Date: Tue, 30 Jul 2019 21:05:22 +0000
Message-ID: <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
References: <2332799.izEFUvJP67@kreacher>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
In-Reply-To: <20190730191934.GD13948@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-07-30T21:05:21.3406615Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-30_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907300211
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907300211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_140526_508706_A48A8DFD 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, rajatja@google.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Keith Busch <kbusch@kernel.org>
> Sent: Tuesday, July 30, 2019 2:20 PM
> To: Kai-Heng Feng
> Cc: Limonciello, Mario; rjw@rjwysocki.net; keith.busch@intel.com; hch@lst.de;
> sagi@grimberg.me; linux-nvme@lists.infradead.org; linux-pm@vger.kernel.org;
> linux-kernel@vger.kernel.org; rajatja@google.com
> Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
> suspend" has problems
> 
> 
> [EXTERNAL EMAIL]
> 
> On Wed, Jul 31, 2019 at 02:50:01AM +0800, Kai-Heng Feng wrote:
> >
> > Just did a quick test, this patch regress SK Hynix BC501, the SoC stays at
> > PC3 once the patch is applied.
> 
> Okay, I'm afraid device/platform quirks may be required unless there are
> any other ideas out there.

I think if a quirk goes in for Rafael's SSD it would have to be a quirk specific to this
device and FW version per the findings on KH checking the same device with the
older FW version.

> 
> I'm not a big fan of adding more params to this driver. Those are
> global to the module, so that couldn't really handle a platform with
> two different devices that want different behavior.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
