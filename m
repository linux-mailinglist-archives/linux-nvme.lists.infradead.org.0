Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1ED3B21A
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 11:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2im6I8PfwE7xV6SZjWETKCtTTUh11oBpSmtKRgI5zw=; b=YvKtl5dxOJ4pej
	5na5VBr9O5cY+edArCGnyY/k7W+Nv8FgzNVhBZx6ckreEPPbZ1eIhioaGhq8OFkgT3MpM+t/fi4vo
	mRSjMzkB6dcuDUfEd5Gy0pVwG0Gy3iKOMxs2N5O/dgxCEpPrP5Ymv9/RnWFb4WVg7IHT5RuOBvr7x
	8VlszWyKEAs4n7M0un+cbxXtoe8ZPaofKrDU9hOVvtED9aVAi9+NBzZnjqg7pL6nka1KHPt4nWdvx
	mvtGcvp6X2KGBF+wwAn6vMUcm2mzIfrNOcaVe6G4eIkn9/RFbQB3w8ILVL+yHveLO5kVBmH5V7OiE
	g6wFrN4bAFCiL5BUCU6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGcQ-00085O-Ar; Mon, 10 Jun 2019 09:29:34 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGZh-0006Tx-St
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 09:26:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so4930434pfg.10
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 02:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/MrfA3Emiysa/e6lrADNN7cD47aICPb7f5I4SBAjvbA=;
 b=dFA9udkKxNLMst9ly+tH51vw62+SbyGG/PN+Lw9mMBw3fVBZs6mXQDe2pQKzxolpi9
 9RDdgm+qqmyHKb2ltLpLUrmlkBI4r/yQpX5m3DlCLRHRc+5f6vDqOWneMsHPrDKVOl1X
 QNuLFvUFFhccu7je2jzhn2OGKbQSdZeEuVXJgiuyHV8vcf/60r/Kw4usBnFJ4RM97lns
 i2ZShSnUF85ehtu1fnekUb7yIIGLSxgLWjrdrOI942WNVBFKgyVyH3KovXnLjWOCd04O
 +uiBt/GKNzmf/JmyaomkMviy0szOn/xaRf0gR1FX9BdmoI+t9uGX/wgfXOlnn3YGDFsK
 7dgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/MrfA3Emiysa/e6lrADNN7cD47aICPb7f5I4SBAjvbA=;
 b=f20fLuXpeX/nqvbBOi1x82D4HSXdl8/DFW71F2Dp+ay9tYCw2mvpNmxzKnK0lNiFGX
 xHWEMlwjOgxpS4sImtEwL39UljYoHaORll7sAj7HeWorUSlHbN/aoNUT9m4/hCijF6mK
 lMHBBETNZNdTYNlohBvIM5Bo826mUOO4TiWQu6WeHv+d5QDA9CiPA5Nlmif3oaipRGiy
 b05z6+/Y8U6009Jtdteq3oG18OgoD3jhmPzcWzfNyGXXk0azfgqMvcaHUzygfHb3jjkt
 Dbq677QiVUhatVZPLYMtJC0GL2+rYSoc7D7MgMeJaNxpPGBh5YYnlqBoKDse4tRpQByX
 EIPw==
X-Gm-Message-State: APjAAAUS0mOAKdVxMrvHuDkyX26wma6UAvRMam8F8bMmjsydBkGhscRU
 l8XTjtE68hFJZmkC0FzG4k2AwNrzjww=
X-Google-Smtp-Source: APXvYqye8v4wyGwCJ9+RlGBTm7Hx0IZAm15djbqgjmQatcwYqpTin2PibFn7qKWmAEi95K31UUtl3g==
X-Received: by 2002:a62:2f87:: with SMTP id v129mr74758930pfv.9.1560158804566; 
 Mon, 10 Jun 2019 02:26:44 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id d4sm9348605pju.19.2019.06.10.02.26.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 02:26:43 -0700 (PDT)
Date: Mon, 10 Jun 2019 18:26:40 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
Message-ID: <20190610092640.GB1879@minwooim-desktop>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
 <BYAPR04MB57495E9DBF68A2BF2FA076C686110@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB57495E9DBF68A2BF2FA076C686110@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_022646_071957_D45C7C3E 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-08 20:13:00, Chaitanya Kulkarni wrote:
> (+ CC: Sagi).
> 
> I'm fine if Sagi is okay with this.

(Fix typo in the previous mail.)

Sagi,

Could you please have a look this series?

Thanks,

> 
> On 06/08/2019 01:01 PM, Minwoo Im wrote:
> > On 19-06-08 19:36:42, Chaitanya Kulkarni wrote:
> >>> @@ -874,9 +877,11 @@ static int do_discover(char *argstr, bool connect)
> >>>    	case DISC_GET_NUMRECS:
> >>>    		fprintf(stderr,
> >>>    			"Get number of discovery log entries failed.\n");
> >>> +		ret = status;
> >>>    		break;
> >>>    	case DISC_GET_LOG:
> >>>    		fprintf(stderr, "Get discovery log entries failed.\n");
> >>> +		ret = status;
> >>>    		break;
> >>>    	case DISC_NO_LOG:
> >>>    		fprintf(stdout, "No discovery log entries to fetch.\n");
> >>> @@ -885,6 +890,7 @@ static int do_discover(char *argstr, bool connect)
> >>>    	case DISC_NOT_EQUAL:
> >>>    		fprintf(stderr,
> >>>    		"Numrec values of last two get discovery log page not equal\n");
> >>> +		ret = DISC_OK;
> >> Can you please explain above assignment ?
> >
> > Even it fails due to a mismatch between numrec in the header and the
> > actual nr_entries, the discovery log-page has been done successfully
> > whose status code should be in zero.
> >
> > That code is just returning 0 to the caller which does not need to fail
> > due to this reason.  You may ask me why I didn't do like:
> > 	ret = 0;
> >
> > That is just following the code right above which is a case for
> > DISC_NO_LOG.
> >
> > What do you think about it ?
> >
> > Thanks!
> >
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
