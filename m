Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD378DE95
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 22:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iexJUjQn+9WaWVAC3OX8QgWv9dIKbvHqqfJZQB5ZLQ8=; b=W8DR5tsAbrkgQR
	NkbN3UUjFMxmbxuP1PuKDJdVqt7BbssFrAz7Zqaky41jyab94kaHdhc85wvlbgAv/6HfH57VOzwGX
	tG3WGQL282/X5le7gp1q0scWi23TyUeioB9Ke6J9dZQX/F9CUOK/o2SF3mTkM702SshsUd5FeTrPa
	njjblRgFbBNy7iXFCtNMfCsDgGdBqcVnhpzhuyv5mXCIEoN0XA603AG/AUNKV9DKBOLPtAVAoOmCY
	h8mgDN8No+U0511isDPN8VvXG5NndKQuV+47KkUgze4jddRH7wxQUGByH3RQK3cTZwRf6SejsdJtq
	80nOoGOvRW/UAedZtiJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzkL-0000Vh-EL; Wed, 14 Aug 2019 20:19:49 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzkB-0000VL-Uf
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 20:19:41 +0000
Received: from pps.filterd (m0170393.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EKEsVT003894
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 16:19:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=WcSC1bSopTVeFcc/5wNxd5IcewwWd/Pxa+GV9dQeI3o=;
 b=tbbYvH5Ni4mSUoHcuNg+wYTTLc7o1GvAfc4SszqSuQbd3rHgB2Q8hRYOOYYJ9a8IGM/c
 eeLmWpOYQV21Q2kNOXHOHdt76An7Ab+JX4vQ0gWaPF69GNW+eHIOagW4882YdL19MfS+
 QnvVVsLcGbbRe/s5rk3jNH319X2yMQhwiEFUUUMFpvhtJ4XnMuV/0AS+oFyrqsXYfPtw
 YMC5kg+yytagPsH/GzdTjB8RCLzxrUib7kFE2UaeMCvvfcplQ6AGqyWh8u5m+FwnkiNV
 j8Bh+rvMjUWAoLfxZlDmYAyPzq69Q1ELvm6I67GQVGkjqi8rH98MOqEGSvuWa7QFDh+g 3w== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2uc19cp6av-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 16:19:39 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EKI2Iu097684
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 16:19:39 -0400
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 2ucm7vwbdm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 16:19:39 -0400
X-LoopCount0: from 10.166.132.55
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="408454404"
From: <Mario.Limonciello@dell.com>
To: <sagi@grimberg.me>, <kbusch@kernel.org>
Subject: RE: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
Thread-Topic: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
Thread-Index: AQHVUtwQRoMvFWyQNUuquaDdHeAiWqb7Z/MA//+sqmA=
Date: Wed, 14 Aug 2019 20:19:34 +0000
Message-ID: <3e38dce0c1ae406496af3a70dfd36077@AUSX13MPC105.AMER.DELL.COM>
References: <1565813304-16710-1-git-send-email-mario.limonciello@dell.com>
 <32f20898-b9af-eee0-97de-0a568de54b57@grimberg.me>
In-Reply-To: <32f20898-b9af-eee0-97de-0a568de54b57@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2019-08-14T20:19:32.9806728Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual;
 aiplabel=External Public
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-14_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908140185
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908140184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_131940_037036_792C8D7D 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Crag.Wang@dell.com, sjg@google.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, Ryan.Hong@Dell.com,
 Jared.Dominguez@dell.com, Charles.Hyde@dellteam.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Sagi Grimberg <sagi@grimberg.me>
> Sent: Wednesday, August 14, 2019 3:15 PM
> To: Limonciello, Mario; Keith Busch
> Cc: Jens Axboe; Christoph Hellwig; linux-nvme@lists.infradead.org; LKML; Hong,
> Ryan; Wang, Crag; sjg@google.com; Hyde, Charles - Dell Team; Dominguez, Jared
> Subject: Re: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
> 22301111
> 
> 
> [EXTERNAL EMAIL]
> 
> Mario,
> 
> Can you please respin a patch that applies cleanly on nvme-5.4?

It looks like nvme-5.4 is missing the commit coming in from Rafael's linux-next tree that it's dependent upon:
https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/drivers/nvme/host?h=linux-next&id=4eaefe8c621c6195c91044396ed8060c179f7aae

Could you cherry pick that into nvme-5.4 as well?  It should apply cleanly then.  Otherwise, would you prefer
this to come in Rafael's tree too?
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
