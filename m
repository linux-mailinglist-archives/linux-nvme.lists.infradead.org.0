Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4441B848
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 16:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WL0DiOBDRxM1KJUFBm1S9fJE+15247B87sFAHDXwKRI=; b=D8ltn1NR4ccQ2K
	+x/rZqZccRDLstTlgstFMysRf3VCeXDZFAEmH+TXm4oMTx0F+KzV4w4zTilDC7G7xBlbhj16AEgfa
	vhmfuOJknLTzr/5FeSLi/NfWQgipeUYlO6ActsatuDsJfW0xQ6kX2zA1S66wspGprSo9q+Jkr/AxT
	doj6Mf4WlxfNS8UY4tJDVBqIc5GloxEFqSrj8gJdl/0NJHaHTIn22YNAb131D+7geh+gNAyvxUH4y
	6A5wlj/DgHCjEBpPtEvM9QGDEVIRLRAVOK23ql3UZiq1IgiRmYdBV2ZopecBmXFRZE4X8mmgUPs9F
	3j2Z/UIvZkUxqRMNudfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBst-0006uS-7F; Mon, 13 May 2019 14:24:55 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBsm-0006t2-NF
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 14:24:50 +0000
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DEKFsi010749
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:24:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=AheufpGoAZmVN2qZEnWSLdnmv1iZb5Fww4rLoVmGa8s=;
 b=HDtgWSAxj75cdt85mMJfupaHh1QhLcJsjdkZuGcUp2PNdb57K8GZvRwXqteQUDS3yj5f
 lfFCCSK2OyHcgqTxqJfKXzLgPIV0LiVRcLymvKC+x/J9tkEU4Bz+D9dWT+/X6+VRQoAk
 FpMQx31wRcqCdIUiWgQNfG16mYBu3QOXT34iNGmTJDfzBlT41e8Mdwbb3ecNseURpraz
 JIoSnmLvqfMWyvAHfEv5D00InI6+EwYoh/Di6SqmH9fR16z8ml936ZKHveqq7mVR1zXz
 qkVqWTBzqK85z74ejgnP75tOKpNjtIHJlY/szfgdFtkzSt6ppSe4IRB9RMomepuKFfu1 PQ== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 2sdsjc4wcs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:24:44 -0400
Received: from pps.filterd (m0144104.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DEJEWV190043
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:24:43 -0400
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
 [143.166.148.223])
 by mx0b-00154901.pphosted.com with ESMTP id 2sf8yw9k0m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:24:43 -0400
X-LoopCount0: from 10.166.132.133
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="336316460"
From: <Mario.Limonciello@dell.com>
To: <keith.busch@intel.com>, <hch@lst.de>, <sagi@grimberg.me>,
 <linux-nvme@lists.infradead.org>
Subject: RE: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Topic: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Index: AQHVB3g9crBQ5iluoUuygL0xp1WIm6ZlFnpAgAQIfyA=
Date: Mon, 13 May 2019 14:24:41 +0000
Message-ID: <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
In-Reply-To: <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
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
 mlxlogscore=990 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905130101
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_072448_766010_B6064015 
X-CRM114-Status: GOOD (  13.77  )
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
Cc: kai.heng.feng@canonical.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, rafael@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> > Cc: Mario Limonciello <Mario.Limonciello@dell.com>
> > Cc: Kai Heng Feng <kai.heng.feng@canonical.com>
> > Signed-off-by: Keith Busch <keith.busch@intel.com>
> > ---
> > Disclaimer: I've tested only on emulation faking support for the feature.
> 
> Thanks for sharing.  I'll arrange some testing with this with storage partners early
> next week.
> 

I've received the result that from one of my partners this patch doesn't work properly
and the platform doesn't go into a lower power state.  (The patch submitted by KH/me
did work on said system to get it into a lower power state for them).

This was not a disk with HMB, but with regard to the HMB I believe it needs to be
removed during s0ix so that there isn't any mistake that SSD thinks it can access HMB
memory in s0ix.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
