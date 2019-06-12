Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AA4425AF
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 14:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5n7MKke9krdbVcyzExW3/IOZoZVLBFLU4c4ZYv2OHNQ=; b=tXObVW10wTJfJb
	gabb5yudbvLesCqCMr+v9ixggQdx/0ADivKqSdTAJXMrZNm7ATS6KWPI9Ya3rOoolGhq/hwh/8orG
	/MJ3hJdwqzD8KnUsQJZj1ps1SG4XnAVkyu7hO4OWdR+sygJKKfT7kpIQarottSIcZe+xZhVgBtNl0
	iuWhKpM4/8BcbFPGsviYvkWdApo9nGQgd/SFvbzy61Qq3Feqx1ymZy3CQShJ/0Hg3XFgK7+5qIea9
	eaahOQKUaUyXbftaJ5S1SaUftUdSJPVAGJmciDpqaXI4+2fdBXiefrPg5qZNUrpI0hd/10Gxd7Ihq
	rlBOBe2Z/xDD4q9yn89g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2LW-0008EU-4G; Wed, 12 Jun 2019 12:27:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2L6-0007zu-Ee
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 12:26:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id 81so9565060pfy.13
 for <linux-nvme@lists.infradead.org>; Wed, 12 Jun 2019 05:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hchdB09acf1DmM5f1NCwuV8YIDrprKhxwy8kDmdKXr0=;
 b=WrBfTUrDAeAkWWLeHF9il85R0PvTEJggukulhy8oaKskEzdvmzELnNabUN3qTfpkZo
 pc6UiZzRzqw8reVtBPmzPoiGxeIL76UGeslrFym8Lp4CCEqqRmyRLHptTZHqhg+kAdFC
 LHFldSU2AlaipCRRZOg73ivcc+tRGgZWx5SaERxci7f5yPRUNMiWLjblG7SgbwVpA2U5
 NggaTvZjYDDhQ3O7YW92ot8QJU+/UdwkXRsv5JP6KhjsXIcIT0ZuITWK9/BvKr/5bVQw
 y1xTDf1NIRacOKWd6nxyIYGrvBxpyHxKI4KTMQQbGSK9trr/WeHBGcgZFOgw1jHp/7H6
 ErRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hchdB09acf1DmM5f1NCwuV8YIDrprKhxwy8kDmdKXr0=;
 b=pDchqEeUvGrxrnnFOYXaYOhhkTpQuO+STZNowiHwDd1lS5e4v6EyJyQLa0lV84GjRd
 LMVH+Zml8jcMaxV4fV+VvPhUdr1/pl+18XkXOgJDHxv2BbWbexQtuNWx9WOW80gmYGr8
 YMMEYL8pNuh9vlV1tKPIDMrLp/uO3T8lqVHBNqg/ncORjQm5MaoVFN0OcWLBHVs9yVa3
 VSTMfaF8IBlGZVSsTyNL3XycWwkr4tnsKyeKFZKe+yOueNj4dkcwWjZbyVhMG1TB5hfy
 A+nou1D69lIW5UHAdx1SimBWxt+EG+S2qkurp5kXbWlV86Gge7bhvHqu8dH2TWgitS5X
 ehCQ==
X-Gm-Message-State: APjAAAV9/XUwya5+12K/8wuLMvfDhOIStRjsWz/K1maad2yy25mMnG31
 JAf/uZ1OcfEnEm1GKDuMXN4=
X-Google-Smtp-Source: APXvYqy9Id5H4qGVLIGxR0aa+4JueuTa/o2DRYqVzXBTzYSlGcuzEEyf0QWiOh/wNze6v+49BtIKBA==
X-Received: by 2002:a17:90a:8c0c:: with SMTP id
 a12mr15864921pjo.67.1560342410903; 
 Wed, 12 Jun 2019 05:26:50 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i3sm21242924pfo.138.2019.06.12.05.26.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 05:26:49 -0700 (PDT)
Date: Wed, 12 Jun 2019 21:26:46 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
Message-ID: <20190612122646.GA32660@minwooim-desktop>
References: <7710edd4-5277-615c-426f-f9d48da8cb99@grimberg.me>
 <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
 <CGME20190611000218epcas3p3270ae3bfaa97cd686a7006810c453988@epcms2p1>
 <20190611051309epcms2p1e47e656deb584057d428eaec018a363e@epcms2p1>
 <667f4f9e-9356-44fb-d7fd-14d00b5393ea@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <667f4f9e-9356-44fb-d7fd-14d00b5393ea@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_052652_590980_6D1D2B42 
X-CRM114-Status: GOOD (  26.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>,
 Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, minwoo.im@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-11 10:36:32, Sagi Grimberg wrote:
> 
> > > Shouldn't we start over in this case?
> > 
> > I can see two functions are calling do_discover() which are:
> >    1) case for discover_from_conf_file()
> > 		err = do_discover(argstr, connect);
> > 		if (err) {
> > 			ret = err;
> > 			continue;
> > 		}
> > 
> >    2) case for discover()
> > 		return do_discover(argstr, connect);
> > 
> > The 1) case might need non-zero values to start over by the user.  For the
> > 2) case, it needs to be in zero value even it fails with entry count mismatch.
> > 
> > I would rather to have negative error value for the DISC_NOT_EQUAL case.
> > Sagi, How about :
> > 
> > 	case DISC_NOT_EQUAL:
> > 		ret = -EBADSLT;
> > 		fprintf(stderr,
> > 		"Numrec values of last two get discovery log page not equal\n");
> > 		break;
> > 
> 
> Question, this is a case where the numrec is different but the genctr is
> the same? I think we need to fail if the genctr is the same, but we need
> to start over if the genctr is different.

This is the case where you pointed it out.  But we don't know if
genctr is different or not because we don't have any notifying code
in nvmf_get_log_page_discovery().  Even genctr is different but the
retries count is exhausted to max_retries, it does not notify this
situation to the caller to retry it.

Would you mind if the following patch is added to this series?  If not, we
need to change the design concept which tries to avoid infinite loop that
had been introduced by Hannes's commit 3cbcd165b47.

---
diff --git a/fabrics.c b/fabrics.c
index 81c2d9d..8a65bca 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -292,6 +292,7 @@ enum {
        DISC_NO_LOG,
        DISC_GET_NUMRECS,
        DISC_GET_LOG,
+       DISC_RETRY_EXHAUSTED,
        DISC_NOT_EQUAL,
 };
 
@@ -386,6 +387,16 @@ static int nvmf_get_log_page_discovery(const char *dev_path,
        } while (genctr != le64_to_cpu(log->genctr) &&
                 ++retries < max_retries);
 
+       /*
+        * If genctr is still different with the one in the log entry, it
+        * means the retires have been exhausted to max_retries.  Then it
+        * should be retried by the caller or the user.
+        */
+       if (genctr != le64_to_cpu(log->genctr)) {
+               error = DISC_RETRY_EXHAUSTED;
+               goto out_free_log;
+       }
+
        if (*numrec != le32_to_cpu(log->numrec)) {
                error = DISC_NOT_EQUAL;
                goto out_free_log;
@@ -887,6 +898,10 @@ static int do_discover(char *argstr, bool connect)
                fprintf(stdout, "No discovery log entries to fetch.\n");
                ret = DISC_OK;
                break;
+       case DISC_RETRY_EXHAUSTED:
+               fprintf(stdout, "Discovery retries exhausted.\n");
+               ret = -EAGAIN;
+               break;
        case DISC_NOT_EQUAL:
                fprintf(stderr,
                "Numrec values of last two get discovery log page not equal\n");


If I'm missing something here, please let me know. 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
