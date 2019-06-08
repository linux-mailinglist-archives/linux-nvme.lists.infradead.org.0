Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E9A3A1DF
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 22:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=X3ymxv7EzeM22cpPqCzbxRXW4QccUPX+LvcyV22JMoA=; b=N/z2AdKVbwfy5z
	47AqHagss8/ZN4LOsUbMtux02qkDHgMYUJ+InI8r1K47D7kFPD/ITu8F6k01tXJPI/eOzpQJjj+BU
	LnPf2dQ1++dyEoGiDTsMO2nRLBMMqhDAMcBYFwruktcDASa23kpZG++qqaVK8JEUjH6KmjBiwLrew
	SNv9OaFTl0IaEVRrEapG/Qo/AifMtm5TJzZ86zrLwFQGqd++GmQFpS6qMfopSs7oHAmv9V8Dl9pdS
	AmFfQS/8WDIL4xlU4udJYN9bMZiUiQBSVwqUgbDduE4Mk+FW4DVF+AJ9GMh3ScTjI6DWfBwqCKFl8
	G6grf9pYhNGRs2FkcYng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhiJ-0000tH-Ee; Sat, 08 Jun 2019 20:13:19 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhiC-0000sv-Sy
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 20:13:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560024793; x=1591560793;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=lsineONvz8iB7K1AYMZoN5IFxfGZaO7sA7tjgN6CKog=;
 b=pwlCoB4rkpV7UsbD3lhS9JNu611QKhCUV1YyGFQjxJKv5WzZLXG5BXrC
 5AYg12wT+U33B/0aMSTOW3qxH7nz0Cz3DmDvs5ZMITetz6Fpw5shLFcqP
 cvUq/Zjoty/pgj4pFkTu0Pkhb876vsOVEvm0m0gzKoprhYnrzwxlGR0sB
 z11llhZ/VF03CzOEyOrBMF8NxzqeAecs5yvKjf4h/qPkPnBi3rs0IWb6C
 apT72KDzjn7aW49ySmrkLB5TQxCsmVzmvRfHE/LnHYmlxI5zixXHY7vuF
 owzXousVHsB+Dm6JPQguPnK1R0Gyhtpowag1w/7zERfGmo3aca/QGZpx4 A==;
X-IronPort-AV: E=Sophos;i="5.63,568,1557158400"; d="scan'208";a="110094003"
Received: from mail-cys01nam02lp2057.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.57])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jun 2019 04:13:03 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LAw/rMNLNbhEBZaBM48oPjK/gSuIS0d9z/OhOAc1UkE=;
 b=RvhjiIaQ6uyfxMsB4YziNw9uO2heDPnwPFPfVx2gZa+aktg8E+9nblOcggPv29MN5Ct9IgaCI9ynnsqhaoyV5ETwINUTRPxUbPSpCKcLVGO/VoiVK6RGc3HG/YzXHac87dww8f80S2cHMxymslsdw02uMu3KEwhPARBORP+wpdI=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5415.namprd04.prod.outlook.com (20.178.50.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Sat, 8 Jun 2019 20:13:01 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 20:13:00 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
Thread-Topic: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
Thread-Index: AQHVGuv2tmlqanNO0kCoAv+r+YkzCQ==
Date: Sat, 8 Jun 2019 20:13:00 +0000
Message-ID: <BYAPR04MB57495E9DBF68A2BF2FA076C686110@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e0b8cd22-d106-46ab-dd12-08d6ec4db4d1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5415; 
x-ms-traffictypediagnostic: BYAPR04MB5415:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5415EB6039F6E6FF3BD474BD86110@BYAPR04MB5415.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(396003)(376002)(39860400002)(366004)(189003)(199004)(73956011)(66556008)(3846002)(76116006)(66946007)(6116002)(66446008)(256004)(486006)(476003)(66476007)(53546011)(6506007)(76176011)(7696005)(186003)(25786009)(102836004)(52536014)(26005)(5660300002)(99286004)(86362001)(446003)(6916009)(14454004)(9686003)(55016002)(33656002)(229853002)(68736007)(72206003)(478600001)(54906003)(316002)(53936002)(64756008)(6246003)(74316002)(8936002)(71200400001)(305945005)(71190400001)(81156014)(8676002)(81166006)(2906002)(66066001)(4326008)(7736002)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5415;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q2ULLklW5MHgxWWK9xozPm4JC0WB6BD8cNhXRegbaWxfpwws0OYC2DhOuDfD/j3SfRg11J45ghfYMP/T7PEaoB+Lm8hU7M8SvbjK8Ja7L0mhx5Y+b4y03VSt7PmyR7HZCX5sOAIKAoT7xx0zPZNmjRE33r/npLqIK/rCXoU7svo7AEE7abkEIcnTNc3KI7Mx0oLFwBsJdBRoiM+IMjFIYJz7AaaGcOAaYeE+gBISXtsUO9OzBTMyWhEfuSpCNvDoENrDlUbbhIaEovOXxX45lBl6GWz86plg1eYZbxcFZ1/8SRg5Ztl4E6Wqv+cEahvNwoMfAxlY5e1u0v+FwsPEQxQfnYrkBJGG411BGnPBGOna/R5x3cToD29A5hjwKZdwy9IXhW02NTn39QskNMnloOQJgIPRJdZ+y4YHC/v4pds=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0b8cd22-d106-46ab-dd12-08d6ec4db4d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 20:13:00.4616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_131312_979267_EC6C5E4B 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

(+ CC: Sagi).

I'm fine if Sagi is okay with this.

On 06/08/2019 01:01 PM, Minwoo Im wrote:
> On 19-06-08 19:36:42, Chaitanya Kulkarni wrote:
>>> @@ -874,9 +877,11 @@ static int do_discover(char *argstr, bool connect)
>>>    	case DISC_GET_NUMRECS:
>>>    		fprintf(stderr,
>>>    			"Get number of discovery log entries failed.\n");
>>> +		ret = status;
>>>    		break;
>>>    	case DISC_GET_LOG:
>>>    		fprintf(stderr, "Get discovery log entries failed.\n");
>>> +		ret = status;
>>>    		break;
>>>    	case DISC_NO_LOG:
>>>    		fprintf(stdout, "No discovery log entries to fetch.\n");
>>> @@ -885,6 +890,7 @@ static int do_discover(char *argstr, bool connect)
>>>    	case DISC_NOT_EQUAL:
>>>    		fprintf(stderr,
>>>    		"Numrec values of last two get discovery log page not equal\n");
>>> +		ret = DISC_OK;
>> Can you please explain above assignment ?
>
> Even it fails due to a mismatch between numrec in the header and the
> actual nr_entries, the discovery log-page has been done successfully
> whose status code should be in zero.
>
> That code is just returning 0 to the caller which does not need to fail
> due to this reason.  You may ask me why I didn't do like:
> 	ret = 0;
>
> That is just following the code right above which is a case for
> DISC_NO_LOG.
>
> What do you think about it ?
>
> Thanks!
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
