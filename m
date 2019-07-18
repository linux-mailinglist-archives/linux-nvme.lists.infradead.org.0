Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6670D6D378
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 20:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDG9pEeplAIs/Bx9fEEoSiSl6cfjNaYiyh0XQ4bEF/w=; b=X/FSouYHolP997
	lXuCQw69eOnHyZOsZP/bFgTtz83sqbwU7xE/31lvDeSMPk1I9dGkqhETryr2qHGYcrGRMCIgDl0iP
	imkmzYL+2J5M+gTCtAYO6xOyjpZkTyvK30cU3ZDTSZ3VIPr1ICLKtUvuG60sTp6glMODwzKtfwfdE
	wlfQgk+JBqZTy0NM20fxLdg6ahCcJthDE6NSEHnIkM3NZGvjxeWIKV9Eg9vsw4stVC0Ra2vlLpNhP
	8aqCK1pgEDM/ThNdFYQ+Gn7D71rbIuWZDzZjC24V6hQ+aZGCQI5cemOBSWLQCvotCVncdM+zx98SP
	bi7k+MUvSBaM9mBUox5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAqG-000716-Qi; Thu, 18 Jul 2019 18:09:20 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAq8-00070l-JA
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 18:09:14 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6IHxBgn030659;
 Thu, 18 Jul 2019 18:08:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=jnk6w6hvLVVRqxLCorx+0jgFb/lCQu0w1fe+dQoWMro=;
 b=0KaNh9u0/zmfsJUNIyM1r7ZNxsLKacRmCr0DceR7iegRzXx+glUAcMvTPujovJrJbKD5
 8L2jAHtVJZANefP6QEPVUav0gUCvljPEtPUxoI/k23tAPcJp7KMC2Qif3Q3jMNhmJcP/
 aD8OLsdpI6uIAamtb31BS9THga8BPpYENutXwTvOgASK2BIwvaPrhiiyqDcCb3+fPiWE
 1Le7IQ5drMq1bk9CWvazdrhWdr6BDTOHst728NHrxoyZdMS2pls0i3niVK4MrbLDRMqt
 GOp8vSUujI0LvdaFPqTLCSwkyqfifiJt2J6nrQht2wEHz9nhbLQlf49SKRHcy7inzp18 Eg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2tq6qu2jna-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jul 2019 18:08:59 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6II3gAv077166;
 Thu, 18 Jul 2019 18:08:58 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2tt77hvg7e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jul 2019 18:08:58 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6II8vJS018217;
 Thu, 18 Jul 2019 18:08:57 GMT
Received: from dhcp-10-154-158-26.vpn.oracle.com (/10.154.158.26)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Jul 2019 18:08:56 +0000
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH] nvme-multipath: sanitize nvme_update_ana_state()
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <20190717143859.GA13872@lst.de>
Date: Thu, 18 Jul 2019 13:08:48 -0500
Message-Id: <D78D352F-0E90-46E1-ABBC-1093CBD858C3@oracle.com>
References: <20190716071830.22672-1-hare@suse.de>
 <20190716093825.GC32562@lst.de>
 <aa83c6b8-5d72-2e11-2681-5bb2e67ba890@suse.de>
 <20190717143859.GA13872@lst.de>
To: Christoph Hellwig <hch@lst.de>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9322
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907180187
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9322
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907180187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_110912_769141_A366D8E6 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



> On Jul 17, 2019, at 9:38 AM, Christoph Hellwig <hch@lst.de> wrote:
> 
> On Tue, Jul 16, 2019 at 12:02:15PM +0200, Hannes Reinecke wrote:
>> The underlying problem is the 'WARN_ON()', which actually can (and is)
>> triggered when ANA change AENs are received during controller (re-) connect.
>> At the same time it's quite pointless to update the ANA state for
>> namespaces which are on their way out; we _still_ seeing odd behaviour
>> during simultaneous rescan/reset, and this is just another safeguard.
>> 
>> But for now I'd be happy to drop the check for NS_REMOVING and just
>> delete the WARN_ON().
> 
> Well, we should certainly skip the nvme_mpath_set_live as well for
> a removing namespace.  But yes, I'd prefer to move the check there
> and then remove the WARN_ON over the big hammer.
> 

Hi 
  I happen to be seeing this WARNING in a port we are using while doing failover testing . If the WARNING is removed , should there be another logging message of a similar nature that alerts of a configuration issue has been detected ? Or is this a transient condition ? 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
