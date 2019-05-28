Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3A82D1AC
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 00:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WVvrnWhs14oHo86V3uDmo+vqmaTJaFLv7yhTm6YwBzI=; b=DHA38KQVWq7tgOcJheiHIhXj+
	ULpOdQrEi33rlmpzbVDnQaymEWSUb1I9VQg0mQAJuGZpnNihoEbcp1DhQZJHzO2akj3HUNldCKx6X
	UuoXTOL+djtLoyuzKCtEKB1cKACxZ6n4j/WXNCxsL21p2LQYVzABzZSfqXNMm3Y09MjTFBGopeOAE
	vJbVS4IXuQntNXfYYTfx/rZR3pO+emGcVE97stNlYRGa+5TZTGNZWsPxB/fXMb7Yr1B2QSbtCeLmg
	8GDUWhlfIQ+lFlG5vsJTla6NDPoZTgvUjhuEi4FL5Ao4r/Az/adOoC08pDNFj+zJEu+/IU0mP7p8O
	v8If2CgOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVkrd-00046O-FC; Tue, 28 May 2019 22:46:37 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVkrY-00045q-Qf
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 22:46:34 +0000
Received: by mail-pf1-f193.google.com with SMTP id y11so203525pfm.13
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 15:46:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=n1CaGLavqL4RdPQOgl8UPYUKxeKVuSKuSGI1j2uJvGM=;
 b=ZB259WpFUj6La0zwmCvM0DXmH4gHEqbtngicCzQEriS/SbXCOgHvFASYMlRayeB/Nm
 goPLGSg6j9vEKQelXbnf4uGgkhGWcg4Qcj4s6AXx6JxXglTuqgzlyGLXimjTDiAwhcD5
 EqehZ8mi4gBO+h3Yolu0yHbfckbMUd/352AAsaY/6aRCFn4u4Sgc/d7shvtgzB0zDDgt
 tHAib9AIkd//9cisuvywH1v+I74XEcruHjbesxTu/6JGu3uzybqcFopQcpckVfELVDxB
 5yH7cucx6grmouOD8dItC7GFofzvMsfHh7i034VXWzaLijEGZCMZhIQ9LimJCjTmJ+TG
 QYRg==
X-Gm-Message-State: APjAAAXK75VrQHW88zfNSQd/f6ZOgnpPVnNudkldVIS9ix0K4Mzev7BU
 RmqYhUhdU0WgUzV2Cvx1vXg=
X-Google-Smtp-Source: APXvYqyLcUZCK1ZWDRP2+r9Ptvz9lfIBGYWan7RcxG9h/Tw5p7Q380VZWjig48fn6sv1sQsxobLAqA==
X-Received: by 2002:a63:d00d:: with SMTP id z13mr38514136pgf.368.1559083591784; 
 Tue, 28 May 2019 15:46:31 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id t7sm15816719pfh.156.2019.05.28.15.46.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 15:46:31 -0700 (PDT)
Subject: Re: [PATCH 6/9] nvme: update list-subsys command to show the entire
 list
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
 <1558951310-31066-7-git-send-email-maxg@mellanox.com>
 <0004494a-67a0-c010-5de6-fa66dcafff68@grimberg.me>
 <8a754fd0-6abc-a000-0183-b6832df0f2ba@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a3c90a29-07f3-614a-034e-d04bcc21013a@grimberg.me>
Date: Tue, 28 May 2019 15:46:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8a754fd0-6abc-a000-0183-b6832df0f2ba@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_154632_861547_B3C6C6F3 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: shlomin@mellanox.com, martin.petersen@oracle.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> Make it similar to "nvme list" command. For that, remove the
>>> unnecessary ana_state parsing (was introduced only if specific namespace
>>> handle was given).
>>
>> No, this is useful! You're arbitrarily removing useful information from
>> the display...
>>
>> nak from me on this one...
> 
> I intended to add it to different command (maybe to new "nvme multipath" 
> command you suggested).

I think it should be the other way around, we already have an interface
which is useful, if we add information it should either be exposed via
an argument or a different command.

> I don't understand why ANA state is so important attribute for a user 
> that only asked "nvme list-subsys".

It gives you the layout of the subsystem with respect to the volume you
asked for.

> One can always run "nvme ana-log" command to get a full log page (I'll 
> take a look on it and see if it can be improved per given namespace)

This is the reverse info (controller view), this is the
subsystem/namespace view.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
