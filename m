Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B41F7B4AF
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 22:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOskiUhUPHDRPqmkIUOH5qRNBN0ukIQM7Fk0dOB2MBk=; b=k0Igdx1ok7PGM9
	VGYiRAGlpouSNahtVs7KBsqdXjUVyPymi40c69QHFO1T7SKuUBti/wALtZaIqsemdUx6wspetQAQM
	1jhNc4dyJXRXHAKoGfH79X8/sbw7WXavQ+xlxI1z9ZSpABV0RigH2uolUDi5nwRcUH1IHE8QwvsvG
	PDd5gZk5e8lroPTN1Lf+bcgsZgcLR9J/bzMhj5STHhwhvwsBWoV7jBhhVAJR6L+FRDXVK4KRnqFl2
	kWQjA08IMn7bhK9Wl1cfFZ+FvkMnI/wWoDxEVreVkryLd8ydOdPN/D40RlfZ6NyeaOEP9d3r7Vbjo
	SifGAcpa3Aj0iR5k0hbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZDs-0002fV-42; Tue, 30 Jul 2019 20:59:52 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZDk-0002ep-Q4
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 20:59:46 +0000
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6UKt4i3020290
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 16:59:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dellteam.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=VuWjCI/V/RHuA2qxMC3KgQKvhit2L8DDVHLDTHKDvzY=;
 b=uMXp69ER9oYrz2fBM2l6c75xkzutPk7qCMUHsUfrSXXZE8HfLeMlKyoZz7tmwRctf3P9
 v6BpXHkogitRrXSF7eK7YNPFM8/ppnCDSK0lPgN9TFSdYSCOuUicWynH9PkBtuwayn2/
 FyI3BSIvASO/OqGPz72Qg8korFvbb0CA+lt6/dQNGqTO8dqKEc5p97XiBpc3/7UIJRuR
 VXcfS601f03hPVWkGLA4dv1Y53dUHXRcF8ws+Ps0/ei8pbnlUoyBREmnn1KD9PgO6RZ3
 MIsN9zuz6ipPz30Fgo65dAxytOtA7bIx9Ycpte4rkuq+jjlfHsRaGloS7y1fKNuxJKHp Gw== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2u25yge0tu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 16:59:41 -0400
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6UKrMPZ065557
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 16:59:40 -0400
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
 [143.166.148.223])
 by mx0b-00154901.pphosted.com with ESMTP id 2u2u5k23wf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 16:59:40 -0400
X-LoopCount0: from 10.166.132.134
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="376666333"
From: <Charles.Hyde@dellteam.com>
To: <kbusch@kernel.org>
Subject: RE: [PATCH] drivers/nvme: save/restore HMB on suspend/resume
Thread-Topic: [PATCH] drivers/nvme: save/restore HMB on suspend/resume
Thread-Index: AQHVRxKpg+vYRJMybEG1wHJP+W8gI6bj9fSA//+tKqA=
Date: Tue, 30 Jul 2019 20:59:38 +0000
Message-ID: <c90ac9850f944407b39e369dce2e1e72@AUSX13MPS303.AMER.DELL.COM>
References: <362aad7f1cf547c2a73e1c4f564984db@AUSX13MPS303.AMER.DELL.COM>
 <20190730204829.GI13948@localhost.localdomain>
In-Reply-To: <20190730204829.GI13948@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Charles_Hyde@Dellteam.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-07-30T20:59:36.5886327Z;
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
 mlxlogscore=869 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907300211
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=960 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907300211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_135944_900727_BBABD0A1 
X-CRM114-Status: GOOD (  15.44  )
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
Cc: axboe@fb.com, Mario.Limonciello@dell.com, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> > LiteOn CL1 devices allocate host memory buffer at initialization.
> > This patch saves and restores the host memory buffer allocation for
> > any NVMe device which has HMB.  Devices which have on-board memory
> > buffers are not impacted.  This patch has been tested locally with the
> > following devices: LiteOn CL1 and CA3, Hynix BC511 and PC601, WDC
> > SN520 and SN720.  This patch has also been tested by our partners at
> > Wistron and Compal.
> 
> Please explain why you're doing this rather than what you're doing. We
> previously concluded that NVMe power states have no spec defined impact
> on HMB, so changing driver behavior requires justification.

Why this change is necessary is because LiteOn CL1 devices would
effectively freeze when coming out of S0ix.  The user perspective is
that, although the Linux kernel is still running in RAM, no commands
could be executed because the CL1 device had no memory buffer, or the
memory buffer was not in the same location; the memory buffer address
was not discernable by me because I had no ability to run commands in
this condition.  After implementing this change, these same CL1 devices
function properly and command access is restored.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
