Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566C91FD037
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 17:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=THWeBHkf7kQyCC0KfNPpQQ/Be3+PXH2sOW1JZ2dcFNo=; b=ClUwf4xypMXl4k1du8cOlYIlf
	tZkZXbfip+oQIbXW5O/68omIWtqv4/rAlpz2bntm+DvSthg6E21wbMP2fnZMsffkYOeNhNUyMQ5/5
	/r17d55h4GSFtMONwHM5fMRFttXFxZ/eJm8WaoNT1m2r9CKAqGGtzTGxKcNaqMpdJDZ9Gt5lp2UKx
	Ufa1T+ALsEJmqnUVkTsJHEGuBccG21KpyHo/zfmv7RSggx3Dtg83OPKZZ0//RokPv8uwshg4bmwy+
	cdXnCB2ma3vFEMut536QRJkxbZbbvuA9LDCuRVIlQNKjkzQ5BCUSq9Zjv8r3QzJEa6dsJPnspNMEk
	w9Yl7vAew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZYQ-0006Iz-Eh; Wed, 17 Jun 2020 15:00:42 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZYL-0006EO-C1
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 15:00:38 +0000
Received: by mail-ed1-x543.google.com with SMTP id c35so2189216edf.5
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jun 2020 08:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ewYLiJNTJQyB+3rQIPwKj+FxYZbp7ZBwEtIXKeY2qqg=;
 b=Sn3fqfGTHn6bYrrySPdwadSbaHKPPiBKIhvPi2KTzfd0DNiHw805I8fzFiWxpsNprX
 wpIbEQbziRobHV1nIEbjd4ofrQol+I5SVoZtW3MPDAoFNNsz1BMo2IliXdwdADvrcR/S
 yZAFEklrkDShy5LdwTepUusd1rA2WsDJEO5TCsvOUKrj3YO2R6uh9PEcA5zwqNELDsJC
 oox5prCNqUPGa598SUwMxMG+06n7lGeWjBMjk2jbodCiSBqStt0iiWZaIrAyXDFoE+6E
 wwk2wFV+9LlHgkD5L/NFkrQQritez6InH0ciP9Bvtz/xjijmFVI0ViLfbE9sP95AeX4b
 Ypxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ewYLiJNTJQyB+3rQIPwKj+FxYZbp7ZBwEtIXKeY2qqg=;
 b=nBvZSFPFtCwv3J07YmRqPdNgxP7ZSBigVqAowo+QR7cD+6I6rBjK8ABOmdD5gc/nzG
 Qckc3tVxJO+u5LV7NCoFyEERrUhfy7IfCFldKuPFZp+ut1Zgk+UuiyRY8v26KAdKzmjZ
 xPviiz/CLDQ2OntoD1q6glziEhl8LtlH4487koLLyYqNgxXbVwuQw0FugZ6NpQanCdCS
 v8zPQpLX1FsBUkl0uSAyQueJCfeklVkM23acRBKif3UFCVveXrohmLJ/5Xt3xlqwJcSk
 EOTmShU7zJwpJ13dRIkteQyrSwg8+F42IoMAW7cEnYJUW77A6x+CqUIySOxy58ApkeLi
 dbfQ==
X-Gm-Message-State: AOAM533FZbpgtcGbmLgaVkQWwrCfkPcsH0FXCv0tZ5H/l2tnWSC4OZeE
 gzqDOehqY7ZF4TZlruD0E5/fXg==
X-Google-Smtp-Source: ABdhPJzZKVXfpt+AqDo00fk98HiTiL6MUQK+cv/hAolqAHenZd5/pRSFqI2sutgAEN9R6h8hqeALNQ==
X-Received: by 2002:a05:6402:1bde:: with SMTP id
 ch30mr7806388edb.163.1592406033845; 
 Wed, 17 Jun 2020 08:00:33 -0700 (PDT)
Received: from localhost (ip-5-186-127-235.cgn.fibianet.dk. [5.186.127.235])
 by smtp.gmail.com with ESMTPSA id n3sm141063ejd.82.2020.06.17.08.00.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 08:00:33 -0700 (PDT)
Date: Wed, 17 Jun 2020 17:00:32 +0200
From: Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
Message-ID: <20200617150032.s5q6ktbbz5ndvvpi@mpHalley.localdomain>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <20200617074328.GA13474@lst.de>
 <yq1r1uej7j6.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1r1uej7j6.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_080037_416697_1893C034 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <niklas.cassel@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>, Ajay Joshi <ajay.joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@wdc.com>,
 Dmitry Fomichev <dmitry.fomichev@wdc.com>,
 Aravind Ramesh <aravind.ramesh@wdc.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Hans Holmberg <hans.holmberg@wdc.com>,
 Christoph Hellwig <hch@lst.de>,
 Matias =?utf-8?B?QmrDuHJsaW5n?= <matias.bjorling@wdc.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 17.06.2020 08:01, Martin K. Petersen wrote:
>
>> Because Append is the way to go and we've moved the Linux zoned block
>> I/O stack to required it,
>
>Just to add some historical context: The first discussions about how to
>support block devices with a non-random write model in Linux happened
>maybe a decade ago.
>
>Drive vendors came to LSF/MM to solicit feedback on how Linux could
>support impending SMR devices. We spent a long time going over various
>approaches, including some that are similar to what is now being
>entertained as alternative to Append. The conclusion back then was that
>an Append-like model (tell-us-where-you-put-it) was the only reasonable
>way to accommodate these devices in Linux given how our filesystems and
>I/O stack worked.
>
>Consequently, I don't think it is at all unreasonable for us to focus on
>devices that implement that mode of operation in the kernel. This is
>exactly the that we as a community asked the storage industry to
>provide!
>

Martin,

Thanks for sharing the historical context. I agree that append solves a
number of problems in Linux - we have had internal implementations of
append for a long time (and are sending patches extending support for it
later today).

This said, there are users that do not see append as a good fit for
their needs and we would like to support them too.

We will go back to our code and re-iterate based on the feedback we have
gotten out of this thread.

Thanks,
Javier

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
