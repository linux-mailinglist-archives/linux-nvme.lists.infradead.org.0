Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8358594FEE
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 23:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j/Gq2Ml60v2jFYZsf38GT5/VOyhafixN3WQggkaOXzU=; b=Ho2VLBtnQWthet
	Z94vftDB2Q+5dmNvXo1ZyBiIloCV2Qf//mjhH3Aiu3irPid3Uz8u/dMp2iR/LDNRMvcU8cPx9dtKu
	E3fgLWFmZD7vAhOr8Fp0jXeIe6lBtXMA/NzNSUzbDHgZfV1/8TbsYBvDrQleLSnNBgKi0p4pUqPCo
	/Mv5rQRQCSS4t0DHYhZGIvKSSVo9CpJQOnoONm7j7gubaufRt/erO4GHkz1gQDXt3eySeRripI+tk
	M2gWpV94jemrCcgjVE86AXA5RRssPxi/WgpQT6Fh9p0bLwn38d/4lMCGipLMVAerdhCDHPvza72t/
	XJ4MFHezY2sc6vNDAESw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzpGr-0002PS-2a; Mon, 19 Aug 2019 21:32:57 +0000
Received: from mgb.supermicro.com ([207.212.57.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzpGi-0002Ox-16
 for Linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 21:32:49 +0000
Received: from pps.filterd (MGB.supermicro.com [127.0.0.1])
 by MGB.supermicro.com (8.16.0.27/8.16.0.27) with SMTP id x7JLUDfR024014
 for <Linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 14:32:45 -0700
Received: from ex2013-mbx1.supermicro.com (EX2013-MBX1.supermicro.com
 [10.2.1.36]) by MGB.supermicro.com with ESMTP id 2ueh6t2aty-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <Linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 14:32:45 -0700
Received: from EX2013-MBX3.supermicro.com (10.2.1.46) by
 EX2013-MBX1.supermicro.com (10.2.1.36) with Microsoft SMTP Server (TLS) id
 15.0.1236.3; Mon, 19 Aug 2019 14:32:45 -0700
Received: from EX2013-MBX3.supermicro.com ([::1]) by
 EX2013-MBX3.supermicro.com ([fe80::480f:3b56:9703:dd51%21]) with mapi id
 15.00.1236.000; Mon, 19 Aug 2019 14:32:45 -0700
From: Alan Johnson <alanj@supermicro.com>
To: "Linux-nvme@lists.infradead.org" <Linux-nvme@lists.infradead.org>
Subject: newbie NVMe over TCP question
Thread-Topic: newbie NVMe over TCP question
Thread-Index: AdVW1Bj21wS0twWBT0aEByzVc3niUg==
Date: Mon, 19 Aug 2019 21:32:45 +0000
Message-ID: <fd51256163b647f2babcda745194b3d4@EX2013-MBX3.supermicro.com>
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
X-CRM114-CacheID: sfid-20190819_143248_082671_946D300A 
X-CRM114-Status: UNSURE (   3.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.212.57.85 listed in list.dnswl.org]
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

Sorry if this has been asked already but I have set up NVMe over TCP and have no problem configuring a single device on a target node using a script such as the one below. I have multiple NVME devices and can bring the others in using different port IDs but I want to know if multiple devices can use the same IP/port so that a discover command on the initiator will bring them all in?  I have tried different namespaces/nqn for each device. Any examples I have seen only demonstrate single device connectivity.

=======================================================================================================
sudo mkdir /sys/kernel/config/nvmet/subsystems/nvmet-test1
#Configure target device 1
cd /sys/kernel/config/nvmet/subsystems/nvmet-test1
echo 1 |sudo tee -a attr_allow_any_host > /dev/null
sudo mkdir namespaces/1
cd namespaces/1/
echo -n /dev/nvme0n1 |sudo tee -a device_path > /dev/null
echo 1|sudo tee -a enable > /dev/null
sudo mkdir /sys/kernel/config/nvmet/ports/1
cd /sys/kernel/config/nvmet/ports/1
echo 10.10.8.102 |sudo tee -a addr_traddr > /dev/null
echo tcp|sudo tee -a addr_trtype > /dev/null
echo 4420|sudo tee -a addr_trsvcid > /dev/null
echo ipv4|sudo tee -a addr_adrfam > /dev/null
sudo ln -s /sys/kernel/config/nvmet/subsystems/nvmet-test1/ /sys/kernel/config/nvmet/ports/1/subsystems/nvmet-test1
dmesg | grep "nvmet_tcp"
==========================================================================================================

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
