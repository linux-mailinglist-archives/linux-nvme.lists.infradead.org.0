Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0652D2DB
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 02:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnnJxFWAdNeuQmEgmeXRN1FxSySoQSAw2hBD5WBTwgU=; b=BzE18JS3FF5pmy
	B3ZpMIaWRQtk1PRlFOwJ5ToQOSgyAcR5092xuKsv0GjWq4eAaqz5XMfkgy61gJfga5LGVRVP8kZjM
	aVw0CkIIM+aY++xvg9fNceCRZe3KZnIJyVBGExwoYtxYtd3EIxfUTDcfdxde4IM8BpGsk//1kNH0a
	MZF7/H8k7k+ZYRizRrNd8TMBD9Vw4vmDAhNVXEoENEVcqlwiGGAWcVabzZsf2sBOvsi8LZWPerTac
	9a1mLq1OMABtKmMNX7bhYpv4YdwXLGGfjkDlGEqbuIWZN5E72qXfshQ05Q+R0CkQ1Ugjp4TGDfpWk
	Nn31BqWglslUt636ep1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVmT6-0001sl-IY; Wed, 29 May 2019 00:29:24 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVmT1-0001sP-QF
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 00:29:21 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4T0QE8r009711; Tue, 28 May 2019 17:29:17 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=KgjEeVgQy97SU14cg3w/xcsoBKjTtvHaEIbVjpB6F2g=;
 b=iE/E1nLcTxP/0iaS2y3eUHMaugAa8quZx3m2XX23fBhEg8kV6CXsAGE+HJrH+H3aFKFY
 XP7DWPA/Lm9DA3HTNniO4USOi1gf0HvwSYpR00HdJ4WhDrVl04jq9SAHRKZNS6sFEMkX
 t1tm0r5YG/p0dwLLB5lXP8lJZosjesPxf0zngLqLJM3oAbP1GgIS3MQuoGfKjfUVwbqr
 AfxNmlJdlWU0dGIRzLXB4/SpOqKk8rZV8iYsFYObPVvH/e67ZRX36wXANCpGNE0xGbXp
 eQbI8v04zTGlAGzeg1/g1Il8sskw4ul7bGM0ztZn950s8KOwIl8q04rPmBNBtKWP2Xle 6A== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ss270kexd-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 28 May 2019 17:29:17 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 28 May
 2019 17:29:12 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Tue, 28 May 2019 17:29:12 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id DD1043F703F;
 Tue, 28 May 2019 17:29:12 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4T0TBW3010651;
 Tue, 28 May 2019 17:29:12 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Tue, 28 May 2019 17:29:11 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [EXT] Re: [PATCH] nvme-fc: Add message when creating new
 controller
In-Reply-To: <06bf2ef9-253e-3292-5cd5-11cae0c40afa@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1905281722090.9636@mvluser05.qlc.com>
References: <20190528182404.3463-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1905281624470.9636@mvluser05.qlc.com>
 <06bf2ef9-253e-3292-5cd5-11cae0c40afa@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-28_11:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_172919_975444_AE08EF19 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 28 May 2019, 5:13pm, James Smart wrote:

> ----------------------------------------------------------------------
> On 5/28/2019 4:37 PM, Arun Easi wrote:
> > On Tue, 28 May 2019, 11:24am, James Smart wrote:
> > 
> > > When looking at console messages to troubleshoot, there are one
> > > maybe two messages before creation of the controller is complete.
> > > However, a lot of io takes place to reach that point. It's unclear
> > > when things have started.
> > > 
> > > Add a message when the controller is first attempting to be
> > > connecting to. Thus we know what controller and its NQN is being
> > > put into place for any subsequent success or failure messages.
> > > 
> > > Signed-off-by: James Smart <jsmart2021@gmail.com>
> > > ---
> > >   drivers/nvme/host/fc.c | 4 ++++
> > >   1 file changed, 4 insertions(+)
> > > 
> 
> > > +	dev_info(ctrl->ctrl.device,
> > > +		"NVME-FC{%d}: creating new ctrl: NQN \"%s\"\n",
> > > +		ctrl->cnum, ctrl->ctrl.opts->subsysnqn);
> > > +
> > 
> > Adding rport+lport information would be helpful. It would be good to have
> > for all messages, but at least one message establishing the relationship
> > would make it easier when looking at logs.
> > 
> > Just wondering if there is any reason why no FC rport/lport info
> > was logged with any of the messages in fc.c?
> 
> I actually asked myself the same question after sending the patch: whether
> having host_traddr and traddr fields in that message made sense. I opted to
> stay as is only because it is much shorter (those WWN's are long).

I agree, *traaddr-s are too long. Having just lport pWWN and rport pWWN, 
though still longer, would be good IMHO. Longer term, it would be great to 
have a nvmefc_info/warn/err that takes in a "ctrl" or other abstraction 
that can provide these additional information. That way messages remain 
consistent and easily changeable to usefulness/taste.

> 
> The other question I had is whether I should print this only on initial
> creation or whenever a new association is started so it picks up the cases of
> when a reconnect start.

+1 for reconnect. That way we can know every start of re-connects.

-- arun

> Only disadvantage is - more long messages in the log.
> 
> I can easily be convinced to do something different if you prefer.
> 
> -- james
> 
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
