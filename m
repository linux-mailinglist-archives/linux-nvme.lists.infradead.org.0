Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930E31B97C
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVFQkX8ScZpiU36lZcqexC3i31MV4iwBdhwI72KXWlk=; b=TgIPfMxMMVumuC
	Kxxof5dPPaw5tr9dX7iISm6YLHKDV7VIpbUS2Yma86Q9r4eCEQpTMRy62RmpQbQxTOQbNxHpiIfOP
	YDZAHpsUVu/bYVhAiFcXwMVLqu2waaXfWgCNkNaAhIrQlIhrVXoy9nCo+uAYncRkjHuKuKvqkLipR
	4iot/7ZTzflmKv8QnYmPIcTnDjhyFqfa5O5DSAzppemlUTDLVjCqqBvwd9oZCFYfZk8ikat9f9AQv
	2CZ+4tRTDTFVSuhN1gr/cw1ypWUMXbKNz8g43jts7FXFbbUDmkjrinsI94fNtGeDbCNrwPgfnbILc
	/XslPXbAm4XK9Q7+mNXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCWX-00028v-Bb; Mon, 13 May 2019 15:05:53 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCWQ-00025k-Et
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:05:48 +0000
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DEeRUj000439
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 11:05:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=chAF8huIeWFNVTfXYbNZpQo2VqCwIsV6gSMQwM6imN4=;
 b=KCktDra51lSdw3/Hcdg/Ti04mtb5zqnCfDPzFLjlCZkXXjEF3xwiKuqe4zlJzV2aLinF
 w7uoeahba440Gu+LDXau3tZhIu1JF8W2aDRhxK/t2gQ+vYjViZKot/C38X5ENv7GFtNw
 reByQtHSWyFjMead6GlsbCsaE2Fskb4Wei39FrAvKicWtzRdTdcOm23TH22+D0Usf2zW
 +2Yr/g52mlpnp76s31FwjZS+eOkmoAXFe0E4I1MD9mL28Bj+QRVzCqwRjS0RS/7oaoCk
 VsPCUfXIx3/goezeAuG9VAJq6y6Zgxrk9mivYOTYv31ZtHwqXrOcI9B0yrJMTOWyodBh pQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2sdsjc53fs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 11:05:46 -0400
Received: from pps.filterd (m0133268.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DF2pY6130573
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 11:05:45 -0400
Received: from ausxippc106.us.dell.com (AUSXIPPC106.us.dell.com
 [143.166.85.156])
 by mx0a-00154901.pphosted.com with ESMTP id 2sdrmrcd24-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 11:05:45 -0400
X-LoopCount0: from 10.166.132.131
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="397025192"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>
Subject: RE: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Topic: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Index: AQHVB3g9crBQ5iluoUuygL0xp1WIm6ZlFnpAgAQIfyCAAFi+gP//rRIQgABX4QD//638cA==
Date: Mon, 13 May 2019 15:05:42 +0000
Message-ID: <d69ff7154191492eaa8f55535a7effa5@AUSX13MPC105.AMER.DELL.COM>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143741.GA25500@lst.de>
 <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
 <20190513145522.GA15421@localhost.localdomain>
In-Reply-To: <20190513145522.GA15421@localhost.localdomain>
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
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905130104
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_080546_566931_518A78CF 
X-CRM114-Status: GOOD (  21.01  )
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
Cc: sagi@grimberg.me, rafael@kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Keith Busch <kbusch@kernel.org>
> Sent: Monday, May 13, 2019 9:55 AM
> To: Limonciello, Mario
> Cc: hch@lst.de; keith.busch@intel.com; sagi@grimberg.me; linux-
> nvme@lists.infradead.org; rafael@kernel.org; linux-kernel@vger.kernel.org; linux-
> pm@vger.kernel.org; kai.heng.feng@canonical.com
> Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
> 
> 
> [EXTERNAL EMAIL]
> 
> On Mon, May 13, 2019 at 02:43:43PM +0000, Mario.Limonciello@dell.com wrote:
> > > Well, it sounds like your partners device does not work properly in this
> > > case.  There is nothing in the NVMe spec that says queues should be
> > > torn down for deep power states, and that whole idea seems rather
> > > counter productive to low-latency suspend/resume cycles.
> >
> > Well I've got a thought, quoting the NVME spec:
> > "After a successful completion of a Set Features command for this feature, the
> controller shall be in the
> > Power State specified. If enabled, autonomous power state transitions continue
> to occur from the new state."
> >
> > If APST is enabled on this disk, what is to stop an autonomous  reverse
> > transition from queue activity on the way down?
> 
> Regardless of whether APST is enabled or not, the controller may
> autonomously transition out of a host requested low power state in
> response to host activity. Exiting a low power state should mean some
> other task is actively using the device, and if that's the case, why are
> you trying to enter a low power state in the first place? Alternatively,
> if host activity really is idle, then why is the device autonomously
> leaving the requested state?

This system power state - suspend to idle is going to freeze threads.
But we're talking a multi threaded kernel.  Can't there be a timing problem going
on then too?  With a disk flush being active in one task and the other task trying
to put the disk into the deepest power state.  If you don't freeze the queues how
can you guarantee that didn't happen?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
