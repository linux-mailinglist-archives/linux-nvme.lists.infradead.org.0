Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807C73C34A
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Jun 2019 07:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OT7yrAa0Wk2xhdse9nvnNYODqimORpmBArSDdKEhhg=; b=LqO0NUmzcGEMWC
	beU4FW9uqOFJhjdRfg8tfcgfTvcLUd2bCgYVWK1LDL23HWRraJpxEAOJTMgdRaNlvYGYiFbX825Ol
	U4V2y/O5mapxxL7pH9tYpvo5jOdLVeqXNhdZgq2xek49worjYBsfHEhkNEdugEq9gMUsTYG0Pma7F
	NMa1mpCv06bRXYL6x8UujzXu/yrUyIDugODiparXYAbb+H34eLwyYXvzdBh4fbm3QLVANVeEuwMDV
	bIxYtPckGFrlgCqYoqNnbMTvd+1jFTkZiPJswsm76Avl1WEaXOlvew5buKbYt9rTpTWO8c+tZZWuX
	Rx/M+ZyantEpuhWGGdMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZ68-0007p0-Mj; Tue, 11 Jun 2019 05:13:28 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZ60-0007oF-Uf
 for linux-nvme@lists.infradead.org; Tue, 11 Jun 2019 05:13:22 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190611051312epoutp039225c3d07894045d8bef16c58e47bc23~nDOlJom230797407974epoutp03J
 for <linux-nvme@lists.infradead.org>; Tue, 11 Jun 2019 05:13:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190611051312epoutp039225c3d07894045d8bef16c58e47bc23~nDOlJom230797407974epoutp03J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560229992;
 bh=xfxMQ/A/CqlIVkOY1/58pE5eIVuTDX/slaUxVDOhA4g=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=HehWepFYbMuom9AEUYW6sW9nTmyJM2khVE1fayDtzhAGQ0D4SmoTjJA0J4G918AeV
 au2D/+eqoLjAPd+cFRb7K8cyKyj9/1LBEoqGpfqjIPNuRj7nN6CVuZCJKbScN364WO
 HhRXeGLLAXY3bvZ5jzcymEUn8zwLso/7vjWHEsVk=
Received: from epsmges2p2.samsung.com (unknown [182.195.40.181]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190611051310epcas2p2e44d31ebdc80eaad4ca09a843b41a8d7~nDOjzOecg0114001140epcas2p2u;
 Tue, 11 Jun 2019 05:13:10 +0000 (GMT)
X-AuditID: b6c32a46-d4bff7000000106f-83-5cff38652313
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 AC.E7.04207.5683FFC5; Tue, 11 Jun 2019 14:13:09 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
From: Minwoo Im <minwoo.im@samsung.com>
To: Sagi Grimberg <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <7710edd4-5277-615c-426f-f9d48da8cb99@grimberg.me>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190611051309epcms2p1e47e656deb584057d428eaec018a363e@epcms2p1>
Date: Tue, 11 Jun 2019 14:13:09 +0900
X-CMS-MailID: 20190611051309epcms2p1e47e656deb584057d428eaec018a363e
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH+e3ebVdtdV1aRysaV0ys1G01u4pWUMl6kRFBmLBu7qeT9mJ3
 k16kkmKuBxUUNSIjTKWolZWthIgpK+ldUj7Qih6Wa2pBmZbV5rX0vw9fzvl9z/f8DkXIKySx
 VKHZjm1mzshIwsmGpkRNEmb/5Cp9fUmsq9NPske9LxBbVfNeyg5XRrCX/P3kUrH2pqtLqn3c
 fYXU1p+vlGivVhdrK+7sF2WLc4wZBszpsU2BzXkWfaG5IJNZvUG3TKdJVaqSVGnsIkZh5kw4
 k1m+Jjspq9AY9GYURZzREZSyOZ5nUhZn2CwOO1YYLLw9k8FWvdGqUlmTec7EO8wFyXkWU7pK
 qVRrgpVbjIaB5lci66sp2799vyItQf0RThRGAb0QPG/rSScKp+S0B0HNrVKxE1GUjI6EEc/U
 UM1UegNUDjwjQrKcng0/epWCnAh9jQ/EIZbQCVByrJcMcRS9G1zNZaM6QRsg0NMnFaxkcKLi
 PSnwDLhRex2FOIxeAvff/JQIejS0XwhI/3G/rwoJHAXl3Q8JgSPh9VAjCo0DNEB332IBi+Fa
 HRsKAnQZgrbPF8daU6C058uorYxeCx+e3xOFmKTjYbCuZmyc5eA76EPCyLPhRuDUaFoiGNF9
 K0V4Pg6aO0ihYjLsaxr5H8pz+p1I4Dj44vWODRkDtc/8Y6G08PVonUTY8UcRNB6+TBxGCtf4
 ml0TjF3jxmcQcR5Nw1beVIB5tVU98Wfr0egRzs3yoOpHa7yIphAzSbZp8+9cuZgr4neYvAgo
 gomSOQeDkkzP7diJbRadzWHEvBdpgvmPELHReZbgSZvtOpVGnZqqTNOwmlQ1y0yX1Ue058rp
 As6Ot2FsxbZ/fSIqLLYEPff/2rX5Q7wz/YLlmqbHTejlub67pnVN/kBy67wEd47nZIfx9qrw
 hCefhiKPd7bMqaqY2crqoh0B19P57hXx3q0Llras3GhvuP4AHzC8PGQpfxJ5NT9h38O9nyXf
 8vbMT/a6z3Y10Oek628vGDhim/V4cLjVH7W/rail+nJ+DNvLMiRv4FRzCRvP/QXNG9s9mgMA
 AA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190611000218epcas3p3270ae3bfaa97cd686a7006810c453988
References: <7710edd4-5277-615c-426f-f9d48da8cb99@grimberg.me>
 <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
 <CGME20190611000218epcas3p3270ae3bfaa97cd686a7006810c453988@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_221321_322017_7CFCA3EA 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Reply-To: minwoo.im@samsung.com
Cc: Keith Busch <kbusch@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

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
> >>>    		"Numrec values of last two get discovery log page not
> equal\n");
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
> 
> Shouldn't we start over in this case?

I can see two functions are calling do_discover() which are:
  1) case for discover_from_conf_file()
		err = do_discover(argstr, connect);
		if (err) {
			ret = err;
			continue;
		}

  2) case for discover()
		return do_discover(argstr, connect);

The 1) case might need non-zero values to start over by the user.  For the
2) case, it needs to be in zero value even it fails with entry count mismatch.

I would rather to have negative error value for the DISC_NOT_EQUAL case.
Sagi, How about :

	case DISC_NOT_EQUAL:
		ret = -EBADSLT;
		fprintf(stderr,
		"Numrec values of last two get discovery log page not equal\n");
		break;

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
