Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E09F5CD3
	for <lists+linux-nvme@lfdr.de>; Sat,  9 Nov 2019 02:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYJVcS1xyS1kIxjZPxGy8msRclqBi5oJv6Oc6P0MFHY=; b=Z+h5nQbG2gl58L
	M8/bLMoLhRiJRsL8e3kNf37VlOcknF7vm8+WCYjkHk8iaw4HANg2/F/G8U8uI9/d5OEdfQMTF9x/4
	JtOq/CF8oKLpfSawdSxfs5b05X/ZjUSV7YvO8OIheL4dbJaL0Ye2f92/ylS52l/QAX18rhFAS99gy
	WWeZknYRwCzag89gkCMSFlIPJFL8EXXYawoTOsCuiNZdlW7oq4tJ+P7unfzK6wZtkNWAr/V8Tghty
	EQdERbtBH6pwJ/cMJVj/NHXysvMGsNlC24vf1Cf/PrWSAYA90uBJR34YTMop+JHYhB+dDmFKpVrTa
	/LZxF1aGRYc3aMBOEAew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTFyk-00088v-FM; Sat, 09 Nov 2019 01:55:54 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTFyf-000882-T3
 for linux-nvme@lists.infradead.org; Sat, 09 Nov 2019 01:55:51 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA91tZ8S167283;
 Sat, 9 Nov 2019 01:55:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=+2uTuUdEKLkFToaBAWGX6Wxu2kt1gkQV0EEFU7ozZaw=;
 b=c5VxcldAYW3SkDC29zAJkiYtkJ7nWJ/ZSDJRUSyzdWia8wqk2vnGN0/Dd7VyK0lxxEkt
 RCQG7/UQ3Eth3iDI6hXASV+DxvsYMrg3zDtqTlR37jZcPtIUWfvJG76z4pMhWOc/NAsm
 mMNRS569TvCVWwbI8UOQw6khf1HhKCYa7hBQ4PlgHvcsz/7p2Tyrp66IEdrv3sNgUGoT
 73vl3DvxQUYowOa0BNUjkNgQqOArmKxQfBasap+DQHF4+7M3kk0hI36lMsVCVaNLdmoa
 8AmP98DJEa9+l6MPL5hdsnMsgDQ9xh9BDu2cxUvXTsjBIHsCJ6rb0W58oPTRehjYGRJ6 rA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2w5hgwrag5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 09 Nov 2019 01:55:35 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA91rwAD111398;
 Sat, 9 Nov 2019 01:55:34 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2w5jkcpssk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 09 Nov 2019 01:55:34 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xA91tUbS009400;
 Sat, 9 Nov 2019 01:55:30 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 08 Nov 2019 17:55:29 -0800
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH] nvme-cli/fabrics: Add pi_enable param to connect cmd
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-2-maxg@mellanox.com>
 <yq15zjwza2y.fsf@oracle.com>
 <ed926da1-1466-edbd-6fa3-fb828bf455cc@mellanox.com>
Date: Fri, 08 Nov 2019 20:55:25 -0500
In-Reply-To: <ed926da1-1466-edbd-6fa3-fb828bf455cc@mellanox.com> (Max
 Gurtovoy's message of "Thu, 7 Nov 2019 14:02:48 +0200")
Message-ID: <yq14kzdx182.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9435
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=887
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911090016
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9435
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=971 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911090016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_175550_028473_84F56EFF 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: sagi@grimberg.me, vladimirk@mellanox.com, idanb@mellanox.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 oren@mellanox.com, "Martin K. Petersen" <martin.petersen@oracle.com>,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Max,

> So iSER will create a signature resources for every capable device and
> connection without giving the user the possibility to distinguish
> between needed PI controllers and un-needed PI controllers.
>
> We don't have a format command in the fabrics so this is the best
> option we can think of for adding flexibility to users.
>
> I spoke with Christoph about the module param possibility and we both
> agreed it's not the way to go.
>
> Let me know if you have an idea that will enable flexibility to users.

The way it works in SCSI is that if a user wants to enable PI, they do
so when provision the device. So either a format for disk drives or by
selecting an option while creating a LUN in a storage array management
interface.

There are some knobs that can be twiddled on the initiator side to
enable/disable PI and/or DIX but these are meant for test or buggy
device workaround purposes. Not as a means for the user to select or
deselect the feature.

The user can decide on a per-device basis whether the block layer should
generate PI on write and verify on read. Those are the "proper" policy
knobs on the initiator side.

When an I/O request is received by the SCSI stack, we inspect it to
determine whether we need to allocate one or two scatterlists. If the
request has a bip attached, we'll allocate a separate scatterlist which
is then used to map the protection information before the I/O is
submitted to the device driver.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
