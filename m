Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1FA9500D
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 23:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7v4lnvjqMnJPOaTvA5eP+1tWjVLGa46kMtUJUDyphLI=; b=Ig74948Qn99Qaq
	FwjvHVmaVr5yVjKcbhj6SD8HMzdIrHbkdaA0PHzq48NVBcHvqgZiiPNSbRcloKoDYUdJhjyRW88Yz
	72Qp6xSIPOF2si3G7s6PWWmmH+Lhua9DGmgpXVcZyYYWXY6Z6vTpnH5Up13y6q0l4dFDX3SeJRjSw
	MtOI+bA3n8G+UACsCq/9BER2gWG8ikkJdnuvVnmKn4PiKZMDL3kXYLiq4ok/1lAnCIyrrrU0YEh/d
	Q52PrzLBLfH+LWxUwG50NObHXDK/Ksx+OSDPShMvU15dgFwjR38p/nclQE9wUuOcgk/ylRizyNV36
	VXzAq3vyDG9x+Ke7IaSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzpTO-0006sw-6W; Mon, 19 Aug 2019 21:45:54 +0000
Received: from mga.supermicro.com ([207.212.57.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzpTE-0006sZ-0o
 for Linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 21:45:45 +0000
Received: from pps.filterd (MGA.supermicro.com [127.0.0.1])
 by MGA.supermicro.com (8.16.0.27/8.16.0.27) with SMTP id x7JLeRNS007357;
 Mon, 19 Aug 2019 14:45:34 -0700
Received: from ex2013-mbx2.supermicro.com (Ex2013-MBX2.supermicro.com
 [10.2.1.38]) by MGA.supermicro.com with ESMTP id 2ueh6t9xvk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 19 Aug 2019 14:45:34 -0700
Received: from EX2013-MBX3.supermicro.com (10.2.1.46) by
 Ex2013-MBX2.supermicro.com (10.2.1.38) with Microsoft SMTP Server (TLS) id
 15.0.1236.3; Mon, 19 Aug 2019 14:45:34 -0700
Received: from EX2013-MBX3.supermicro.com ([::1]) by
 EX2013-MBX3.supermicro.com ([fe80::480f:3b56:9703:dd51%21]) with mapi id
 15.00.1236.000; Mon, 19 Aug 2019 14:45:34 -0700
From: Alan Johnson <alanj@supermicro.com>
To: Sagi Grimberg <sagi@grimberg.me>, "Linux-nvme@lists.infradead.org"
 <Linux-nvme@lists.infradead.org>
Subject: RE: newbie NVMe over TCP question
Thread-Topic: newbie NVMe over TCP question
Thread-Index: AdVW1Bj21wS0twWBT0aEByzVc3niUgAPZ+cAAA7bf4A=
Date: Mon, 19 Aug 2019 21:45:34 +0000
Message-ID: <1caa47d9b3e4443fb4df38c6104c233c@EX2013-MBX3.supermicro.com>
References: <fd51256163b647f2babcda745194b3d4@EX2013-MBX3.supermicro.com>
 <2f71279c-f9a3-d7de-5763-8d66f80897fc@grimberg.me>
In-Reply-To: <2f71279c-f9a3-d7de-5763-8d66f80897fc@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.2.0.41]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-19_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_144544_076164_15D47291 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.212.57.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Many thanks for your very quick response Sagi! I'll give that a try!

-----Original Message-----
From: Sagi Grimberg [mailto:sagi@grimberg.me] 
Sent: Monday, August 19, 2019 5:43 PM
To: Alan Johnson (System) <alanj@supermicro.com>; Linux-nvme@lists.infradead.org
Subject: Re: newbie NVMe over TCP question

> Sorry if this has been asked already but I have set up NVMe over TCP and have no problem configuring a single device on a target node using a script such as the one below. I have multiple NVME devices and can bring the others in using different port IDs but I want to know if multiple devices can use the same IP/port so that a discover command on the initiator will bring them all in?  I have tried different namespaces/nqn for each device. Any examples I have seen only demonstrate single device connectivity.

Your nvme devices are exported as NVMe namespaces (e.g. namespaces/1) over one or more nvme subsystem(s) (e.g. subsystems/nvmet-test1) that can exposed via one or more nvme port(s) (e.g. ports/1).

The discover command gives you a list of subsystem(s) port(s) the host can connect to. Once you connect to a subsystem, the driver will query the list of namespaces, and then it will find whatever is configured in
namespaces/* and will create a device node for each.

So you can safely add namespaces/1,2,3,4,... and direct them to your 'real' nvme devices, connect to your subsystem and you should be able to see all of them (using nvme list).
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
