Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A98782553
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 21:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlWz9nd89EOx1YN5oHLLt7HrWxPu/IYdzoe7PrP2OEk=; b=n6ftydz6p7yyk4
	uQLTYVApN2XNPnFD/vp1AUGGzpx6H3nIWBC/7NY5Fdv1BCrxty2tN7l1vvpDQK3UDMgIv59ZPYm+T
	K33X8vuFGe9eNtWBDYwxCRxRrC+uBM76X4Slopoh2m5fxV3k767aUsBAx53kcoQDx1uBsyCq7PAsg
	3tSB4bE9UlDH/oibgGx9otCu5w0eu8opwF62cwLECev1X6MqPMLdBSkFMe4teTjpcV3wocjUR3Z9h
	ww29aEupVi8flZ60vpXnNYND7q12DIXkSK0kIPuBgCIUE/mD+t6G/SrbnFk+ZCrKFj6NJuZd8J9mJ
	QuFQtis81E9n96QlRPRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiM3-0007Pu-7Z; Mon, 05 Aug 2019 19:09:11 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiLx-0007PN-6I
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 19:09:06 +0000
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x75IosqV013459; Mon, 5 Aug 2019 12:08:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=iyylftj8lgJWLostEtcujS3Hk7uwen7o+/nMgchgXgA=;
 b=bpRdN7NWSar6bIyx8BHeRu7Qg43dkyLdhnPs7+i2q7XmFswH8173i2dsEqsJ7iLmRmtm
 3bUlSl9F4ZNaQ276KIrtfGAULUF6Xj5O12kTBVssA2ijxJ+c4KFE6S+MBkdl0yfAnf2A
 IzVDLzXNY4yPp1W983EqWjkIvChLj98avDo= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2u6seq877w-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Mon, 05 Aug 2019 12:08:32 -0700
Received: from ash-exhub102.TheFacebook.com (2620:10d:c0a8:82::f) by
 ash-exhub104.TheFacebook.com (2620:10d:c0a8:82::d) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Aug 2019 12:08:00 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.172) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 5 Aug 2019 12:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oxzf+/U0v8PYD4CC/h8ylaf4HQ+/8cR76ep/PwbaS6f7tcN/Q2D5UaWXMJTgvXnIuEQvnQlkSMwmDTyAKdXn/vOw3QaBxtkzeZZ03U/rATl9mZKzn0O32tKx4Sq3GOPoiDMQ5OiVD/q0enlhdt25zdtR9zGHszabvJeiKjOyO76l7xvXYbXjynwi1WUJgw+i62vqmYI1F3TYuHuv3culP7vLQGpcmKMMs4q3IK8FKhHxDYN5vjisUkbUyLvJZIyORQjbDEiRgtEe9pmXxj5tgnyES7YSHJ33AMwCFV5AASVcXaeZ2EPt4CYC5KKk/P1UaRqbdLJJadQJfW13JViffw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iyylftj8lgJWLostEtcujS3Hk7uwen7o+/nMgchgXgA=;
 b=VIfMUNSwB38OI5P89xHISHD4J0wO0lzfKgrD5D2vSx++TCswochvwv4vytT/0Nce4lW4kvOGEHWeGMBsz1oS12kp9fqDArSAmzPzLyqLJR/PVj1J5xUvtobuwGGx5QD9Hj77qAT2yIBzSuq5HZx20jtLTTqdq+BX/f9wvjzydlQmZJgHAFPqmaFwW5ZdUVsZBVBcvYq0gdnaSL5v+NHUBBfv42BTQUsNLc0h6ukynlQnu+Mcusvheu7fnjmVK2PphxCa8xTSni/WTXVVj014KUW/Kw6qLkPiI3H9zcn7Yh3OGM0QtyqS/GOg3heOfmMIctyCc3OiZi7+Q2+cc+4E7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iyylftj8lgJWLostEtcujS3Hk7uwen7o+/nMgchgXgA=;
 b=GyMgRzTqxAANGOjV+L3avcAdj3vb9L2s0HfJ2g1a12sff2gUNzUWtT8tKT+UfHhIU43tjaZV1mtZT8OnkWBrtI8+Vfx7PruixA+0msRPNwbM/jpwVQF7b1Mn3eV3mM/Yo+O2LC1WFBLled/7Oh2LGWTAJl7PPIIqNiRHV4qNkcM=
Received: from BYAPR15MB2790.namprd15.prod.outlook.com (20.179.158.31) by
 BYAPR15MB2456.namprd15.prod.outlook.com (52.135.200.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.19; Mon, 5 Aug 2019 19:07:57 +0000
Received: from BYAPR15MB2790.namprd15.prod.outlook.com
 ([fe80::4531:ecb8:acf6:5802]) by BYAPR15MB2790.namprd15.prod.outlook.com
 ([fe80::4531:ecb8:acf6:5802%6]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 19:07:57 +0000
From: Jens Axboe <axboe@fb.com>
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
Thread-Topic: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
Thread-Index: AQHVPfMwAGvmUolnXkGHxRRRQYYlF6bjW5oAgABTUoCACIkBgIAAw0jGgAALDwA=
Date: Mon, 5 Aug 2019 19:07:56 +0000
Message-ID: <caa04d02-05a0-dd1f-2072-df41a21f2aa8@fb.com>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
 <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
 <20190805134907.GC18647@localhost.localdomain>
 <40a6acc2-beae-3e36-ca20-af5801038a1e@grimberg.me>
In-Reply-To: <40a6acc2-beae-3e36-ca20-af5801038a1e@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::29) To BYAPR15MB2790.namprd15.prod.outlook.com
 (2603:10b6:a03:15a::31)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2605:e000:100e:83a1:3cf5:36ed:899e:8d54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff886c8a-ddf6-43ba-9cbd-08d719d8399b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR15MB2456; 
x-ms-traffictypediagnostic: BYAPR15MB2456:
x-microsoft-antispam-prvs: <BYAPR15MB24561E38013C69EFA74222F8C0DA0@BYAPR15MB2456.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(136003)(39860400002)(376002)(346002)(47660400002)(189003)(199004)(25786009)(7416002)(76176011)(52116002)(6436002)(66476007)(6486002)(6506007)(53546011)(316002)(386003)(64756008)(66946007)(66446008)(110136005)(102836004)(4744005)(229853002)(5660300002)(54906003)(81156014)(6116002)(36756003)(2906002)(8676002)(305945005)(81166006)(7736002)(53936002)(8936002)(6246003)(186003)(256004)(486006)(71200400001)(2616005)(476003)(11346002)(446003)(71190400001)(46003)(31686004)(99286004)(66556008)(14444005)(14454004)(68736007)(6512007)(478600001)(31696002)(4326008)(86362001)(46800400005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR15MB2456;
 H:BYAPR15MB2790.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GtgfUn3wNQNwi+VQIqxmFMrHgGFGwMOAlvkfVSkR/P5RdgBmty8L1gbjXUpFzcHcAVABOLzPt9/pFjyOa9icY4FHwdDZfOHh32lADSFONLoj89Fspcdlnl7fpM8Ho5nNPNtzw4HirrVKjUMg77pXAPqDVTx2f6QCy1YBaDpqgdjqok3uyYkYFZLi0WLgvyoodUe8m1IYDPidNDN9Yu383WxnvLBFrKtjWB8OzPjt+A/E7XzsRl0fL49a//wIi9188MqbKx5JpYTEErMksXJ8ZJlLF11RnzMZU52T6JElbkzgkdIKGnR2Gynt5ddor844lR5QuB6y4qsAgEgtHvwYNkxouhLqdkUYxFOfFDenTRygWNIPe4w4QqO9sPSlf6aQNH3TIyhzCzFve0sz3e5Q1Id3ugdnwCxs/h9QTcIxtcM=
Content-ID: <7EE2C77BE146FD4CB5FD83E83E3E0E85@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ff886c8a-ddf6-43ba-9cbd-08d719d8399b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 19:07:56.8643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: axboe@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2456
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-05_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=964 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908050191
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_120905_240868_9BAA0B34 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Paul Pawlowski <paul@mrarm.io>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/5/19 11:27 AM, Sagi Grimberg wrote:
> 
>>> Ping ? I had another look today and I don't feel like mucking around
>>> with all the AQ size logic, AEN magic tag etc... just for that sake of
>>> that Apple gunk. I'm happy to have it give up IO tags, it doesn't seem
>>> to make much of a difference in practice anyway.
>>>
>>> But if you feel strongly about it, then I'll implement the "proper" way
>>> sometimes this week, adding a way to shrink the AQ down to something
>>> like 3 (one admin request, one async event (AEN), and the empty slot)
>>> by making a bunch of the constants involved variables instead.
>>
>> I don't feel too strongly about it. I think your patch is fine, so
>>
>> Acked-by: Keith Busch <keith.busch@intel.com>
> 
> Should we pick this up for 5.3-rc?

No, it's not a regression fix. Queue it up for 5.4 instead.

-- 
Jens Axboe

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
