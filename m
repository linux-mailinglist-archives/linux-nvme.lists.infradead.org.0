Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3F51ACC4
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=mXibhdFd6xAFksGT44QxSx8TJPMTu8Wh/GAtsDEwASw=; b=CWH7mDVwdCspLC
	KMQ0XufksufJCJgwXR5npd0Wl7kscYOmtnBstBQ2/X+pyL1I191z0wdw/tznzDRbsUXJEsXbtpfYP
	IGSyI6BrEkc9MjhY+WRALrmBDJyYScku41JzqbRTtqHeX4GWDyQcA7+ngRNsfjzsyMkaO2GNZs+kV
	ykXMEYATbLSEqTzz7U/nRLYakuPstMRJ0054EMHVZfrM+lxuavmuXFkM8amRAyf2fNHEyKrpUDcvO
	gxdFLzyl1xFItgFXWcN3+S8sSo4ZUCAKPTH9xFSkUOieXO2vH6WT7L75C0FQfDL1WArmVvoSH96eX
	KKNlOG7Jgw9eszZJFceA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqJe-000427-Cg; Sun, 12 May 2019 15:23:06 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqJK-0003eq-TX
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:22:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557674599; x=1589210599;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=36Q853XYd7SPgnCZ2soEkNawyqcRPLMH+eBJNEE5eRU=;
 b=WeDiTFpdr4Pm7zKIPdGFsWzZWdv1xBD/+BORH7nnKYKPYRVzX8VY6aIW
 ypLntXmyZhXaBJbNsKsww5Ek4ASAmAlXLJ1XSR/P445e+nj1Dy+/QqSV+
 6OL9iDyk+gUUqpdo6CzYbmpTTWTibH4FYDlMUZMTXo+OpOXwJPrePWlGp
 jZLlzFeKca5n02R+1zJvljgYdCWrEYnHDtjUXx/hTwD01Nu8K97E33AeI
 a3y60t20WUIMCtGwAC8BKjK+xwNPHWWc0n4yF1hsX2NJSAvjfuBXWbh/j
 XJwhMMSAbenq15A++P+5YJwwW8KRO6fnHJy9z/ij8zeo48kw2iefCloZ5 w==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="207445898"
Received: from mail-sn1nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.59])
 by ob1.hgst.iphmx.com with ESMTP; 12 May 2019 23:23:19 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XNkYPgqaihFfas965d4T7tZDHCG37Kb1QJlLDef3yZY=;
 b=R4Knzth+WJUBKSqw2j75MNU/+L38A+ATw1M2C/2J6qF3jS78YoSGzR4MVoq0xIRPNwsW3wC3DuPfRLVDAmj2E4hLtTPeUlfjlIcTovLy9wqLlatgYf/pGGrM2C7T8oTOyje7mbvG2W4ltoBFpagwbf+3yAs7Gk2zqSAPPAYSWLA=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5422.namprd04.prod.outlook.com (20.177.254.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Sun, 12 May 2019 15:22:43 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Sun, 12 May 2019
 15:22:43 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH RFC 2/4] nvme-status: Introduce nvme status module to map
 errno
Thread-Topic: [PATCH RFC 2/4] nvme-status: Introduce nvme status module to map
 errno
Thread-Index: AQHVCDECitgdLJFKvEOQcXscsVQnZw==
Date: Sun, 12 May 2019 15:22:43 +0000
Message-ID: <SN6PR04MB45278EE0AE7DC4358D2EAC4D860E0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
 <20190511193713.29516-3-minwoo.im.dev@gmail.com>
 <SN6PR04MB452726893B1EC5E52D347B3F860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
 <5bcca563-73c9-a588-d656-9b612aedad20@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:f0c0:87f3:c23f:eddc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d52b54f-1219-4f46-18a5-08d6d6edadef
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5422; 
x-ms-traffictypediagnostic: SN6PR04MB5422:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB54227E9A972A70C556104AE5860E0@SN6PR04MB5422.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(39860400002)(346002)(136003)(376002)(199004)(189003)(51234002)(8936002)(7736002)(229853002)(25786009)(6116002)(6436002)(76116006)(91956017)(73956011)(66946007)(305945005)(86362001)(52536014)(6246003)(316002)(256004)(5660300002)(53936002)(4326008)(71190400001)(71200400001)(99286004)(478600001)(486006)(7696005)(76176011)(74316002)(102836004)(186003)(68736007)(14454004)(55016002)(2501003)(9686003)(2906002)(66446008)(64756008)(66556008)(66476007)(6506007)(446003)(33656002)(46003)(476003)(53546011)(81166006)(8676002)(81156014)(72206003)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5422;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /qonbMEJcHxZaYfP1+I3M9k9x2j8bioKEwvo88/fu9yWXaihcOsTKvjcFCISKrUHtQd1NS5CKeXvnySQdyXU2krFh9rVaLBGGHHbjDdu3NEYAqyzhA+ODRUj+9M4SdAuUIfyksG/VFPrl61XL6sPb2M0I/FnAmhCsIZLILKH738f40RK3XkXRUK1IGiU1GYnvmqWxJTbTMI2GRv0BCwfozIstWqyM/pxuAKuS8XLspCpQhTlxlEW1TNpU4BpM/ALAfoCHiMGwBoT7lmGZ5f3irRHgcK0aea4IUspqQOcGrUs8CXQvWqRvtkWikQWKNWfzLVBye2VAORprIieZu4QhBrJViyFpA1Y0wPvGWpeBxJ7MVdyi5lWeM7UcSU/mI488WLSpkoOtMrRIptzCY8Gc5oBlNnAwxvpvpg1Z/Hf3iQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d52b54f-1219-4f46-18a5-08d6d6edadef
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 15:22:43.2264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5422
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082247_674691_6FBA3434 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

That works.

On 5/11/19 3:25 PM, Minwoo Im wrote:
>>> +	if (sct == NVME_SCT_GENERIC) {
>>> +		switch (status) {
>>> +		case NVME_SC_INVALID_OPCODE:
>>> +		case NVME_SC_INVALID_FIELD:
>>> +		case NVME_SC_INVALID_NS:
>>> +		case NVME_SC_SGL_INVALID_LAST:
>>> +		case NVME_SC_SGL_INVALID_COUNT:
>>> +		case NVME_SC_SGL_INVALID_DATA:
>>> +		case NVME_SC_SGL_INVALID_METADATA:
>>> +		case NVME_SC_SGL_INVALID_TYPE:
>>> +		case NVME_SC_SGL_INVALID_OFFSET:
>>> +		case NVME_SC_SGL_INVALID_SUBTYPE:
>>> +			return EINVAL;
>>> +		case NVME_SC_CMDID_CONFLICT:
>>> +			return EADDRINUSE;
>>> +		case NVME_SC_DATA_XFER_ERROR:
>>> +		case NVME_SC_INTERNAL:
>>> +		case NVME_SC_SANITIZE_FAILED:
>>> +			return EIO;
>>> +		case NVME_SC_POWER_LOSS:
>>> +		case NVME_SC_ABORT_REQ:
>>> +		case NVME_SC_ABORT_QUEUE:
>>> +		case NVME_SC_FUSED_FAIL:
>>> +		case NVME_SC_FUSED_MISSING:
>>> +			return EWOULDBLOCK;
>>> +		case NVME_SC_CMD_SEQ_ERROR:
>>> +			return EILSEQ;
>>> +		case NVME_SC_SANITIZE_IN_PROGRESS:
>>> +			return EINPROGRESS;
>>> +		case NVME_SC_NS_WRITE_PROTECTED:
>>> +		case NVME_SC_NS_NOT_READY:
>>> +		case NVME_SC_RESERVATION_CONFLICT:
>>> +			return EACCES;
>>> +		case NVME_SC_LBA_RANGE:
>>> +			return EREMOTEIO;
>>> +		case NVME_SC_CAP_EXCEEDED:
>>> +			return ENOSPC;
>>> +		}
>> Please move above switch to the small helper inline function
>>
>> nvme_status_code_generic().
> I would like to have it indicating "errno" concept in the function name. 
>   I'll make them like:
>    nvme_generic_status_to_errno()
>    nvme_cmd_specific_status_to_errno()
>    nvme_fabrics_status_to_errno()
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
