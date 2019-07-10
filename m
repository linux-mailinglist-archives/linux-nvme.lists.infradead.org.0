Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD60640AE
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jul 2019 07:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2vAcTVR4yD0TF/YPLNZvV/K3IZnuhjrNfKKCNDHrww=; b=BMQb159lGUKa2K
	W05BG3PrEcspnzAcU/YpJwXbGJpVFtTBCerswyBkYmbVPszdZ5WuNETY9DEEeH8AD9LjO2Vqyi75W
	o65ZAq8m7N9p0B2hpm4j+GHQtm9AWDo0P0ebwUu7GsVDMUG1dF5nZP55Aycqn/UBRcxaqAuSf785H
	ZL7O5qc6UXQs5ozhqr9FRg2bTBSjj4W4q0x60mNbMxueEzqCnk3NMTfSy5XKEbxvZqES6Gl77eCkU
	RnL8k93ntABngAAMi5FV5mS3h44Qvjv/YeTC3ZZU7MP37KxciaPhMYNqOwhNp8FgYOf103+YPFGUS
	GiazH9QBTD0HYNTkc5wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl58N-0001k9-HT; Wed, 10 Jul 2019 05:27:15 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl588-0001jO-Q4
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 05:27:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 7A0362BE068D;
 Wed, 10 Jul 2019 07:26:54 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id JlrKVqP9bF-r; Wed, 10 Jul 2019 07:26:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E23272BE0691;
 Wed, 10 Jul 2019 07:26:46 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu E23272BE0691
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1562736406;
 bh=+2lMnvpoKjx0Ngf9cwUYGi4yi5g7W+P6A5+xpsO8iBY=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=aqNTLf+XfRmJ9UKN6JcmU8vF/naP12Zw/pqnA9Pmg8CPQkC8CscnENMnR7foF8tP5
 UMLBS27LdDAHiBuDb+ClP9Cg07IrGoIqBhIWLN8yUVrfU0t5INts0ZsEdL3MkdhQ8G
 qA5KS5hh+I6mX2rgw/F+fHCw4Kp36lvQGzQ2+UaM=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id NUe8OLhz0rwc; Wed, 10 Jul 2019 07:26:46 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C9F532BE0631;
 Wed, 10 Jul 2019 07:26:46 +0200 (CEST)
Date: Wed, 10 Jul 2019 07:26:46 +0200 (CEST)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <516302383.30860772.1562736406606.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20190709212904.GB9636@lst.de>
References: <1575872828.30576006.1562335512322.JavaMail.zimbra@kalray.eu>
 <989987da-6711-0abc-785c-6574b3bb768c@mellanox.com>
 <20190709212904.GB9636@lst.de>
Subject: Re: [PATCH v2] nvme: fix multipath crash when ANA desactivated
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvme: fix multipath crash when ANA desactivated
Thread-Index: 3ZiudTJo+4Xoo4yxPm7HpynQ7U2Unw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_222700_998523_7BF034CC 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Samuel Jones <sjones@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Jean-Baptiste Riaux <jbriaux@kalray.eu>, kbusch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



----- On 9 Jul, 2019, at 23:29, Christoph Hellwig hch@lst.de wrote:

> On Sat, Jul 06, 2019 at 01:06:44PM +0300, Max Gurtovoy wrote:
>>> +	/* check if multipath is enabled and we have the capability */
>>> +	if (!multipath)
>>> +		return 0;
>>> +	if (!ctrl->subsys || ((ctrl->subsys->cmic & (1 << 3)) != 0))
>>
>> shouldn't it be:
>>
>> if (!ctrl->subsys || ((ctrl->subsys->cmic & (1 << 3)) == 0))
>>
>> or
>>
>> if (!ctrl->subsys || !(ctrl->subsys->cmic & (1 << 3)))
>>
>>
>> Otherwise, you don't really do any initialization and return 0 in case you have
>> the capability, right ?
> 
> Yes.  FYI, my idea how to fix this would be something like:

Thanks both, error when changing the condition on my side. I submit the next
version very soon.

Christoph, why would you like to put the use_ana function in the header?
It isn't used anywhere else outside of that file.

Regards,
Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
