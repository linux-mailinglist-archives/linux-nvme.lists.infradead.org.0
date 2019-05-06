Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6731715610
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 00:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Content-ID:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x64W0+6p3ZcK8NOHi9FiAzxE8Hpf3Gq/kK5rbiUhN+g=; b=ULEWzzssmjoO5x
	HSfj9H8bB9PX+5RRIm1yJJcBithIwnYmmJVB2l0qYeM0BKGQGuFtRWQ3/apmP7/YaMO+Nwqs85qyJ
	+JKqo/+VH3PP/arGoSroVTgYKUckckAKh1+W3ZCX84dMP1/nkf+n7ufpjtMw57pClWBORtgNVgSbC
	+/l7KDqyyYd7pzVOtXuf8kHqwizIa0FlWEz/NeDioqPY37UeBAk/56cwRKXFj9TuOgb4NcAAdVAiq
	n729PFG+wjA+SodWGokNQXe05feKVAP43T3B+9Hp5wVPNP3J+BgveVp24LY9v645z58YLkT/QFMks
	VfJIP7/KJSp1eFl2ToYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmFx-0007lH-8U; Mon, 06 May 2019 22:38:45 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmFq-0007kh-M9
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 22:38:40 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x46MU4IS030297; Mon, 6 May 2019 15:38:28 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type : content-id; s=pfpt0818;
 bh=POjvimBm6H62mJv2zwcML8pMUZ6l8gkdNinAjC7BMlU=;
 b=PZWbHZ8erraZa1mlwlJvRpmqn6/iiT/97fCor0gZdBpfJgdBSIWm2RVZ4FjC/ts3Tc9n
 R3stTe6kXAoWI8w/NhNEfmXIbziJbQbw8H8UN82y7ZTdaUloRD/7vEoRQ9bjB6RgKc7R
 kFsrz/qDdJx/Oy27W1u73gYUMAogdtSvlNXtPnCPdXe3MZHIcjVnSmmwAooT+EH2fqpT
 mr1n3hinBg27IO2KySOSCxzdrlaVM3DUAsT4+ncYrgJqJI7mLqvIjcmBxSq6JrEP0RUU
 oTqxubKobqN8kGyWVuFOc7tNw0dv1neAa7mqmJ8z+5CRD+BYvmHofMXPB4gPHDdc+5Ph DQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2satncgsn8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 06 May 2019 15:38:28 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Mon, 6 May
 2019 15:38:26 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Mon, 6 May 2019 15:38:26 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 647353F703F;
 Mon,  6 May 2019 15:38:26 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x46McODM012168;
 Mon, 6 May 2019 15:38:25 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Mon, 6 May 2019 15:38:24 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <james.smart@broadcom.com>
Subject: Re: [PATCH nvme-cli rfc 0/6] Support discovery log change events
In-Reply-To: <3b7117cf-db69-01a3-d286-a2f98f3e8f5b@broadcom.com>
Message-ID: <alpine.LRH.2.21.9999.1905061528390.19585@mvluser05.qlc.com>
References: <20190223023257.21227-1-sagi@grimberg.me>
 <d4012891-8bc7-00cf-ab96-7828270d25af@suse.de>
 <e7423c76-6425-4020-2074-b977fc87866f@grimberg.me>
 <d1742744-1109-e7e8-3586-fca6556c803b@broadcom.com>
 <d7bbfc2a-92ea-315d-bbd6-cd3847449f7b@grimberg.me>
 <3b524b54-8f13-24f5-4367-34a4d02c59b3@broadcom.com>
 <5c64286b-3fbf-9dfe-ef8a-3f72e630f11d@broadcom.com>
 <a4f8ca74-7777-9e80-3209-ef9ce27ad2d8@suse.de>
 <44f637f2-0c0d-cef4-05b3-c5e67ec907bb@grimberg.me>
 <f0e112f7-0db5-4928-0859-8b3b6b797432@grimberg.me>
 <9d0e3080-baa7-6f55-2548-097523bb3a83@suse.de>
 <03163041-9b14-3662-edb8-1d69f20f681f@grimberg.me>
 <f4594084-4f2a-33ca-77b4-d7075bbb12af@broadcom.com>
 <2a08f760-0aeb-d788-3210-72ec9d6eb9bc@grimberg.me>
 <3b7117cf-db69-01a3-d286-a2f98f3e8f5b@broadcom.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
Content-ID: <alpine.LRH.2.21.9999.1905061530101.19585@mvluser05.qlc.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-06_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_153838_844980_4C849249 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi James,

On Fri, 26 Apr 2019, 1:14pm, James Smart wrote:

> On 4/26/2019 12:10 PM, Sagi Grimberg wrote:
> >
> > Given that FC does not need a persistent discovery controller to get the
> > event, its fine that it will create a temporary discovery controller.
> > Given that FC and IP do different things, we can separate them. But what
> > I wanted to understand, is if I export a second subsystem on the same
> > FC port, will it generate an FC event?
> 
> Well - FC does have an RSCN notification to cause the rescan of the FC 
> port, if the FC port as the NVME Discovery attribute, but Christoph 
> rejected the 3 patches about a year ago. I'll be reposting it. So the 
> answer should eventually be - yes, it will get an FC event if the 
> subsystem list at the FC port changes.
> 

So, just wondering, for the case of subsystem addition to an existing FC 
port, is it recommended or mandated in the spec that the target FC port 
send out a RSCN? The RSCN should be from the target FC port, not the 
switch, right? I could not find such a reference in the FC-NVME spec 
version I have (r1.15).

On a related note, from a FC LLDD perspective, then, are they required to 
invoke nvme_fc_rescan_remoteport() upon RSCN reception?

Regards,
-Arun

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
