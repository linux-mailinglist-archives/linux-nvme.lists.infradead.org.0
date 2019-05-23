Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05841274FF
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 06:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cICqa5+P+8hDU5mA3yRD6fjFXnYyGH6ba2YcJg6uqlA=; b=ZaoSxChwTxrtem
	TIlh1rFx0QlrJyAVg9fjJTWBlLj6TBgrvnDPaoQceQZIu9kWQvE//cmWydhdt8zD8JLUkr4k6v3hP
	Ql4/9i0DWMPTnSbxxsj6/MQZfpYcsRzbP/QVFEe9nnSzPJ/+1Oze5CFvMazGavKutQ//eTEKC0QFS
	nVE0Ln5HE0keqhPuON36FklmqZgTnjwSDQJ0nBT3XnKH2ha5Pgp+9dv/6dPIAxV1GXcEx/Ol1T83+
	wfGrJe1vdYYO7MWGAYthYgcRj4EywGgYeMxediPxYLOu2/RKAlQUY5DBB7euvT4tlRXeV4UbaRcQ/
	H6Xpc/7nVX7+ItCVC2HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTfBw-0003Bx-67; Thu, 23 May 2019 04:18:56 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTfBq-0003BW-DI
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 04:18:51 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190523041847epoutp020df93a0adb458c50c7d971d3a18e0a08~hNOpqjCmJ2175021750epoutp02I
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 04:18:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190523041847epoutp020df93a0adb458c50c7d971d3a18e0a08~hNOpqjCmJ2175021750epoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558585127;
 bh=NeMBAGjxVjixVQk8Pi6TWDsfHzxxbkzyZauYchMkKyk=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=tF9YXZ9Rawqspb7lql5W9TbhQN68wDJ9V0L4qF+ZmgwwA2BUIEzJhzAPGUyza9F8Y
 RFYB8O+EUP9PCbn84aJcAM5Kbn2t6s0FEMXc+5Dk5subujwGsJIX8T8BENpr+Awng0
 HLhZw/zKCUXtEhDshhW9n+L7soQ5K+8ocfoujG+c=
Received: from epsmges2p2.samsung.com (unknown [182.195.40.181]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20190523041845epcas2p3ca208d30805e6282a99f2efabf477049~hNOnwjwrB3060230602epcas2p3F;
 Thu, 23 May 2019 04:18:45 +0000 (GMT)
X-AuditID: b6c32a46-d4bff7000000106f-9d-5ce61f248150
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 81.AB.04207.42F16EC5; Thu, 23 May 2019 13:18:44 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 3/9] fabrics: Fix memory leak of subsys list
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "sagi@grimberg.me"
 <sagi@grimberg.me>, "hch@lst.de" <hch@lst.de>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1558543193-24752-4-git-send-email-maxg@mellanox.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190523041844epcms2p855a13b0229e5afeb607e31a28310b883@epcms2p8>
Date: Thu, 23 May 2019 13:18:44 +0900
X-CMS-MailID: 20190523041844epcms2p855a13b0229e5afeb607e31a28310b883
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGJsWRmVeSWpSXmKPExsWy7bCmha6K/LMYg1O7pS1Wrj7KZDHp0DVG
 i/nLnrJbLD/+j8ni9KMD7BbrXr9nsbhzfh2bA7vH+XsbWTw2repk89i8pN5j980GNo9n0w8z
 eXx8eoslgC0qxyYjNTEltUghNS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DX
 LTMH6BYlhbLEnFKgUEBicbGSvp1NUX5pSapCRn5xia1SakFKToGhYYFecWJucWleul5yfq6V
 oYGBkSlQZUJOxuu1F5kLvCp2zjnJ3sBo28XIySEhYCKx8EY/UxcjF4eQwA5GiW//+lm6GDk4
 eAUEJf7uEAapERZwkGhvms0MEhYSkJf48coAIqwp8W73GVYQm01AXaJh6isWEFtEYAujxILJ
 OSAjmQWmM0qsv3CPEWIXr8SM9qcsELa0xPblW8HinAJOEn9brrFBxEUlbq5+yw5jvz82H6pX
 RKL13llmCFtQ4sHP3Ywg90gISEjce2cHYdZLbFlhAbJWQqCFUeLGm7VQrfoSjc8/gq3lFfCV
 eLTkOdgYFgFViafz1kDVuEic2rUQzGYGenH72zlg7zID/bh+lz7EeGWJI7dYICr4JDoO/2WH
 eWrHvCdMELayxMdDh6COlJRYfuk11FMeEq83bmOBBPJBRomu6V9ZJzAqzEKE8ywki2chLF7A
 yLyKUSy1oDg3PbXYqMAIOWI3MYLTpJbbDsYl53wOMQpwMCrx8GaYP40RYk0sK67MPcQowcGs
 JMJ7+tSjGCHelMTKqtSi/Pii0pzU4kOMpkD/T2SWEk3OB6bwvJJ4Q1MjMzMDS1MLUzMjCyVx
 3k3cN2OEBNITS1KzU1MLUotg+pg4OKUaGCc8OalxN5rzIV9DPlu/e6eFTYWdxAcmjXh51g22
 9g6ax9dfmNNw/aYu/83IOzUmTcse3OAzeKUUVv6iZJo9t82q3f6ZiWvN/3gFKh1Pemi8R+Gb
 rRqj9MZt6bePLvolVayrXTHDTr35q8PxnAvLIj/tLbzCJvB0f+hde0Uhp7NPP1b8dDrxSoml
 OCPRUIu5qDgRADitpNqpAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190522164050epcas4p1a79c71f8c93d3297c3051e8c9b359181
References: <1558543193-24752-4-git-send-email-maxg@mellanox.com>
 <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <CGME20190522164050epcas4p1a79c71f8c93d3297c3051e8c9b359181@epcms2p8>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_211850_611727_4A443C4B 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: minwoo.im@samsung.com
Cc: "maxg@mellanox.com" <maxg@mellanox.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "shlomin@mellanox.com" <shlomin@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
