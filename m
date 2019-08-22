Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCA898D17
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 10:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YLTFLFlfrcxMW38a72tTTKu1Zd/umtnuTWcJ9fgY0m0=; b=U13GDxKbToZ0gSkbEOi3cw3nlR
	GWPW1JfH99TrzO7HMxZA/rnuqcOh1AJQF2oGnvJt5FIbp+dOBpv+eoCOj3saE23YFxotQHImOD17o
	5rB63ciPpGEQ7r5TbPbegcA0GbvAnzR7qJasY1jNfhHm8J94D8+Ehj6ElZaSi3fqjhXLI9QsByJmt
	B0gO5J0+DIEMfrhAk1z1sFYI6pbfVh1E9bre+0fTEvsBS2p4GiHcJ+v0PPsnrli3IXMxAOKSm2zwm
	h2o3qGCsffLrrCMA4QCbAfdV+HIk/Owg3evbFLSsNRE5Z2/71yAj3bF5YXDazPldBoIRJYKG0SieW
	7MwyGXbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iD4-0005Hu-1N; Thu, 22 Aug 2019 08:12:42 +0000
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iCi-0005Fb-Jc
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 08:12:21 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 358A2140058;
 Thu, 22 Aug 2019 08:12:12 +0000 (UTC)
Received: from linux-m89u (213.152.161.234) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Thu, 22 Aug
 2019 09:12:07 +0100
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
 <20190822000939.GG9511@lst.de>
 <acaf9334-3c5c-8f25-d436-0c87e94a6064@grimberg.me>
 <20190822003549.GH10391@lst.de>
 <43b9eeab-9e5b-e5c3-235f-d2d050886d28@grimberg.me>
User-agent: mu4e 1.3.3; emacs 26.2
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
In-Reply-To: <43b9eeab-9e5b-e5c3-235f-d2d050886d28@grimberg.me>
Date: Thu, 22 Aug 2019 09:44:45 +0200
Message-ID: <87blwhbq4y.fsf@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [213.152.161.234]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24862.003
X-TM-AS-Result: No-1.687500-8.000000-10
X-TMASE-MatchedRID: 7ySqCuYCpfhGBz2QqLf0mH4neC0h7SADiFB88PweKrUPyJBNuE5b61Et
 MRGFGDWDcT3mNYRXstC570xmaLCKpNGETJv1/WyOZ93oz43dfXESEeAC2OoFyX5Isu006IGGhfF
 lqX1IFFVMc1LVhsYSz5soi2XrUn/J8m+hzBStanvCLNfu05PakAtuKBGekqUpOlxBO2IcOBZ0Y8
 y/lpTv8aVHEzAy2W7gWhu6dWOGaV9GV83jS8h8qMNEM/OxSVvgszsNMv+TuzbL6CZEsmyvDde+I
 LDV64WWvhiiNP8WuKbrpcchznD6Bw==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--1.687500-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24862.003
X-MDID: 1566461533-DPdrDDwLPr13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_011220_704038_BE1FFE65 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.154.164 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sure. I'll send a patch today.

Sagi Grimberg <sagi@grimberg.me> writes:
 > >>> Btw, I also think we should probably pull the original patch
 > >>> from Hannes and just apply a clean one given that this is just queued
 > >>> up in nvme-5.4.
 > >>
 > >> Thought about it too... I can fold it into Hannes patch.
 > >
 > > I'd say let Mikhail or Hannes resend a new one against a clean state
 > > with all the requested improvements.
 > 
 > Mikhail/Hannes, care to send one patch to replace both?


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
