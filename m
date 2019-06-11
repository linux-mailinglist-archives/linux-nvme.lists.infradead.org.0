Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553A13D457
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Jun 2019 19:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WfjNYwpuIxTkVklkMAD7RvTBtHms6OFrh5QhtTfSvRk=; b=CxIcQkDUDVUqr14uUXHI+vpQg
	EKILhVtR04Mke0kwRByg53FDR2Tov+E5T6ZlL+T42x0xEPPG/66wRCJj/2ZGhbbTAma0ykNhvBCbq
	TawJDgkAWyHnyFCE/ZtUQz8IQY05+FCuX/M9ikeN257CLUqyYF2eLzL9Gy8qi7/WaMp8wIjdbiyet
	bfnQfpjb9eDMM1CjwEnpz3RaZB4SlNJw2Wnl3ullGBSH4zvB9NAwO3haURqcKa26mUlLjMxfygncS
	oOG7oRz74UUYuCM+fHqAtf3PrhpxW/tXErQk4H44kKO7hiFs9pp4fRzKKNRo9p+YbRJNvbCUaiINJ
	6lHaXHZqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakhW-0005Oe-95; Tue, 11 Jun 2019 17:36:50 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakhH-0005Le-UF
 for linux-nvme@lists.infradead.org; Tue, 11 Jun 2019 17:36:37 +0000
Received: by mail-ot1-f67.google.com with SMTP id z24so12721528oto.1
 for <linux-nvme@lists.infradead.org>; Tue, 11 Jun 2019 10:36:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=l02+Iqk4b5i4HbMO22TWpcCjAzDLoILtHFUU6Ppkk0Y=;
 b=DwVnxT992X4iHuV1KnodO3fmpK8vwPVXwn/pJoGQLmQDfjrQSYPPDN1IRdvInTlIxh
 9orKi0YDzELy2aUJjRQSCX4Lg0G2x+1Ha+LOrzM9EJil9dO/jZNa5agYC5q5GBTUh36/
 XW4+ufYFJmXp4Qh4oO8k1ozKpLICLBjNO312iFx192EI4khp1KVjWqgDHtWnFHSDo/se
 adgYexth0txwVJYCWtJgsvfs4sTqBqnIkBiSdORrFLnsg1Ip4b485zTylmaYYLU1TjeL
 8DGUdBzNJuC9z0hPEERJKded1MnM1gg67/w24TBELPbdgPzeGiO1q7XcEoi+r1ltrQUy
 mb0A==
X-Gm-Message-State: APjAAAX0+EzbXM0kFLAUnXRQd3LNJG2lfLHX8II6Bl2V9cZFlTVSn+ic
 gURhWj1kzP++uVq+KnIVfAxhlCIh
X-Google-Smtp-Source: APXvYqx0EI41JxrTlqzMSYH7GD4/bdIr5X9ALI4n56nu0EPVtada9T7HCStiT3HygcVR5fNHERLqkQ==
X-Received: by 2002:a9d:65cb:: with SMTP id z11mr12944240oth.325.1560274594547; 
 Tue, 11 Jun 2019 10:36:34 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id u16sm222829otk.46.2019.06.11.10.36.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 10:36:33 -0700 (PDT)
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
To: minwoo.im@samsung.com, Minwoo Im <minwoo.im.dev@gmail.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <7710edd4-5277-615c-426f-f9d48da8cb99@grimberg.me>
 <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
 <CGME20190611000218epcas3p3270ae3bfaa97cd686a7006810c453988@epcms2p1>
 <20190611051309epcms2p1e47e656deb584057d428eaec018a363e@epcms2p1>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <667f4f9e-9356-44fb-d7fd-14d00b5393ea@grimberg.me>
Date: Tue, 11 Jun 2019 10:36:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611051309epcms2p1e47e656deb584057d428eaec018a363e@epcms2p1>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_103635_981111_F60605F8 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <kbusch@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Shouldn't we start over in this case?
> 
> I can see two functions are calling do_discover() which are:
>    1) case for discover_from_conf_file()
> 		err = do_discover(argstr, connect);
> 		if (err) {
> 			ret = err;
> 			continue;
> 		}
> 
>    2) case for discover()
> 		return do_discover(argstr, connect);
> 
> The 1) case might need non-zero values to start over by the user.  For the
> 2) case, it needs to be in zero value even it fails with entry count mismatch.
> 
> I would rather to have negative error value for the DISC_NOT_EQUAL case.
> Sagi, How about :
> 
> 	case DISC_NOT_EQUAL:
> 		ret = -EBADSLT;
> 		fprintf(stderr,
> 		"Numrec values of last two get discovery log page not equal\n");
> 		break;
> 

Question, this is a case where the numrec is different but the genctr is
the same? I think we need to fail if the genctr is the same, but we need
to start over if the genctr is different.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
