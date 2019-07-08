Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD5461CCD
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 12:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NuwJE34/R7vlvOnQE97YilUNCYGoh+U8GDCxjnfVFo4=; b=HSGOnWjB5qK9T5j/9PrZWSQAPg
	756pp45tF0MCrMEJ7eLKKgttAOfaaVyuomMNP2p1n8I0m7zoYMFIGFLKbqAosCN/HG8h3skODu+/m
	p69bU45Wv/pRC9r7FbBKbBlBlzSvMTevEwV8AbDl08x9nUjqxbsBxQcsylNNJl1R6v3J3OBFbV7da
	WoXDpdZNPCDwvfNUB8wgDy2WbyUVwIB3Eu5hTMT2dfhbxJAQt6gDau7uOHH2Yr6aieqZbhzUTnmnm
	THe3vp1EoEHvKAVIcqCYULKIDiL1jjfTpDP9shXg7tmsb7ds4Sr+78SieDiZhslOmmTKSjfBe4Saf
	2Ifv1wVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQgf-0001Jv-C2; Mon, 08 Jul 2019 10:15:57 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQgQ-0001JH-A3
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 10:15:43 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id E57FA10006B;
 Mon,  8 Jul 2019 10:15:33 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 8 Jul 2019
 11:15:27 +0100
References: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
 <cdce4bc7cedc11a80c01e457a4b18933b73017e2.1562234605.git.mskorzhinskiy@solarflare.com>
 <28d0887b-692e-0b33-7530-673006340431@grimberg.me>
User-agent: mu4e 1.3.1; emacs 26.2
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 3/3] nvme-tcp: replace sendpage calls with sendmsg calls
 for SLAB chunks
In-Reply-To: <28d0887b-692e-0b33-7530-673006340431@grimberg.me>
Date: Mon, 8 Jul 2019 12:15:19 +0200
Message-ID: <87zhlovnm0.fsf@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24746.003
X-TM-AS-Result: No-9.671200-8.000000-10
X-TMASE-MatchedRID: eVEkOcJu0F7OH9fyebH9T0dAWPMBu8kQWYK8+f3T9tH3aTNmWiTJHiOq
 N0W6x+gkxLEhAE7cnFZBft7eCOymzcRNeQXK6csDHl2pJS1lPFv4qCLIu0mtIDyC5ddG2Jcg8d4
 oypC4x6uvEHiqa8cd2Bt92Hcett2zIR6KO1Rewi4FZev51JnVPQZyESFXAljfJ1wWZpKFYUmDnm
 xD/gIAeD/JtLzybny2iG5O+yIERz9MJ2NroIGtN20WRq7KHlv4Igt1z4icQStVZCccrGnfyLbsw
 c5FrZdZvTFNo8PUukiYj928NIu8/3jxgHkp9duCAZ0lncqeHqGYohOKUAu7XeIXFxESdRFSqRFi
 yZgRFsRIb6I9FJPzktJHai6GfGFVHxPMjOKY7A8LbigRnpKlKTpcQTtiHDgWE99lJ/uB+WLvkz0
 grrggfowUgjTsIXCxy2u3d5eVkULrHE2FN+Fuc0MMprcbiest
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--9.671200-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24746.003
X-MDID: 1562580935-2-o1HxvKWFjM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_031542_407949_13D1F0EE 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Sagi Grimberg <sagi@grimberg.me> writes:
 > > According to commit a10674bf2406 ("tcp: detecting the misuse of .sendpage
 > > for Slab objects") and previous discussion[1][2], tcp_sendpage should not
 > > be used for pages that is managed by SLAB, as SLAB is not taking page
 > > reference counters into consideration.
 > >
 > > This change prevents sendpage calls for payload sending too, although this
 > > is true only for admin commands, so actual data transfer performance
 > > should be untouched.
 > >
 > > [1] https://www.spinics.net/lists/netdev/msg553616.html
 > > [2] https://www.spinics.net/lists/netdev/msg553285.html
 >
 > Well, the lifetime here is guaranteed to be the same for the buffers
 > in question.
 >
 > Was any issue seen in action?

No.

And if you go through the threads related to this warning, original bug
only observed when sender and receiver happens to be one physical
machine. Making this patch a bit overreaction to the warning, of course.

I was thinking about disabling this check inside tcp code for our caller
then, but I didn't come up with anything clever, so instead I patch
NVMoF TCP.

 > > @@ -860,7 +878,7 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 > >   		else
 > >   			flags |= MSG_MORE;
 > >   -		ret = kernel_sendpage(queue->sock, page, offset, len,
 > > flags);
 > > +		ret = nvme_tcp_sendpage(req, page, offset, len, flags);
 >
 > Please just do this instead:
 > --
 > 	/* can't zcopy slab pages */
 > 	if (unlikely(PageSlab(page))
 > 		sock_no_sendpage()
 > 	else
 > 		kernel_sendpage()
 > --

Will fix.

 > > +static inline int nvme_tcp_try_send_pdu(struct nvme_tcp_request *req,
 > > +					int len, int flags)
 > > +{
 > > +	struct nvme_tcp_queue *queue = req->queue;
 > > +	struct msghdr msg = { .msg_flags = flags };
 > > +	struct kvec iov = {
 > > +			   .iov_base = req->pdu + req->offset,
 > > +			   .iov_len = len,
 > > +	};
 > > +
 > > +	return kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len);
 > > +}
 > > +
 > >   static int nvme_tcp_try_send_cmd_pdu(struct nvme_tcp_request *req)
 > >   {
 > >   	struct nvme_tcp_queue *queue = req->queue;
 > > @@ -898,8 +929,7 @@ static int nvme_tcp_try_send_cmd_pdu(struct nvme_tcp_request *req)
 > >   	if (queue->hdr_digest && !req->offset)
 > >   		nvme_tcp_hdgst(queue->snd_hash, pdu, sizeof(*pdu));
 > >   -	ret = kernel_sendpage(queue->sock, virt_to_page(pdu),
 > > -			offset_in_page(pdu) + req->offset, len,  flags);
 > > +	ret = nvme_tcp_try_send_pdu(req, len, flags);
 >
 > This is unneeded given that pdus are page fragments, NOT slab pages.

Will fix.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
